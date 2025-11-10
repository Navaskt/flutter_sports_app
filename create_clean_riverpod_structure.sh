#!/bin/bash

# This script creates a standard folder structure for a Flutter project
# using Clean Architecture and Riverpod for one or more features.

echo "Setting up common directories..."
# Create the main lib directory structure that is shared across features
mkdir -p lib/core/config
mkdir -p lib/core/services
mkdir -p lib/core/utils
mkdir -p lib/core/widgets
mkdir -p lib/routes
touch lib/main.dart

# Check if any feature names were passed as arguments
if [ "$#" -eq 0 ]; then
  # If no arguments are provided, create a default 'auth' feature
  FEATURES="auth"
  echo "No feature names provided. Creating default 'auth' feature..."
else
  # If arguments are provided, use them as the feature names
  FEATURES="$@"
  echo "Preparing to create features: $FEATURES"
fi

# Loop through each feature name provided
for FEATURE_NAME in $FEATURES; do
  echo "Creating folder structure for feature: $FEATURE_NAME"

  # Create the feature-specific directory structure
  mkdir -p lib/features/$FEATURE_NAME/data/datasources
  mkdir -p lib/features/$FEATURE_NAME/data/models
  mkdir -p lib/features/$FEATURE_NAME/data/repositories
  mkdir -p lib/features/$FEATURE_NAME/domain/entities
  mkdir -p lib/features/$FEATURE_NAME/domain/repositories
  mkdir -p lib/features/$FEATURE_NAME/domain/usecases
  mkdir -p lib/features/$FEATURE_NAME/presentation/providers
  mkdir -p lib/features/$FEATURE_NAME/presentation/screens
  mkdir -p lib/features/$FEATURE_NAME/presentation/widgets

  # Create .gitkeep files to ensure directories are tracked by Git
  touch lib/features/$FEATURE_NAME/data/datasources/.gitkeep
  touch lib/features/$FEATURE_NAME/data/models/.gitkeep
  touch lib/features/$FEATURE_NAME/data/repositories/.gitkeep
  touch lib/features/$FEATURE_NAME/domain/entities/.gitkeep
  touch lib/features/$FEATURE_NAME/domain/repositories/.gitkeep
  touch lib/features/$FEATURE_NAME/domain/usecases/.gitkeep
  touch lib/features/$FEATURE_NAME/presentation/providers/.gitkeep
  touch lib/features/$FEATURE_NAME/presentation/screens/.gitkeep
  touch lib/features/$FEATURE_NAME/presentation/widgets/.gitkeep

  echo "Successfully created feature: $FEATURE_NAME"
done

echo "----------------------------------------"
echo "All features created successfully."
