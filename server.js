const express = require('express');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(express.json());

let matches = [
    { id: 'm1', startTime: '2025-11-10T14:00:00Z', league: 'Premier League', homeTeam: 'Arsenal', awayTeam: 'Chelsea', homeScore: 1, awayScore: 0, status: 'live' },
    { id: 'm2', startTime: '2025-11-10T16:30:00Z', league: 'La Liga', homeTeam: 'Real Madrid', awayTeam: 'Barcelona', homeScore: 0, awayScore: 0, status: 'scheduled' },
    { id: 'm3', startTime: '2025-11-09T18:00:00Z', league: 'Serie A', homeTeam: 'Inter', awayTeam: 'Milan', homeScore: 2, awayScore: 1, status: 'finished' }
];

// GET /matches?status=live&league=Premier%20League&page=1&limit=20
app.get('/matches', (req, res) => {
    const { status, league, page = 1, limit = 20 } = req.query;
    let data = [...matches];
    if (status) data = data.filter(m => m.status === status);
    if (league) data = data.filter(m => m.league === league);
    const start = (Number(page) - 1) * Number(limit);
    res.json({
        items: data.slice(start, start + Number(limit)),
        total: data.length,
        page: Number(page),
        limit: Number(limit)
    });
});

// GET /matches/:id
app.get('/matches/:id', (req, res) => {
    const m = matches.find(x => x.id === req.params.id);
    if (!m) return res.status(404).json({ message: 'Not found' });
    res.json(m);
});

// POST /__seed to reload mock data at runtime
app.post('/__seed', (req, res) => {
    matches = req.body.matches || matches;
    res.json({ ok: true, count: matches.length });
});

const port = process.env.PORT || 4000;
app.listen(port, () => console.log(`Mock API on http://localhost:${port}`));

const { WebSocketServer } = require('ws');
const wss = new WebSocketServer({ port: 4001 });

wss.on('connection', (ws) => {
    ws.send(JSON.stringify({ type: 'hello', t: Date.now() }));
});

setInterval(() => {
    // bump score for m1 if live
    const m1 = matches.find(m => m.id === 'm1' && m.status === 'live');
    if (m1) {
        m1.homeScore += 1;
        const payload = JSON.stringify({ type: 'score_update', matchId: m1.id, homeScore: m1.homeScore, awayScore: m1.awayScore });
        wss.clients.forEach(c => c.readyState === 1 && c.send(payload));
    }
}, 5000);
