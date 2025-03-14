# Compiler_service
echo Building Docker image for compiler_service...
cd Compiler_service
docker build -t compiler_service .
echo Tagging Docker image for compiler_service...
docker tag compiler_service mick0974/testsmellsgame:compiler_service

# Exercise_service
echo Building Maven project for exercise_service...
cd ../Exercise_service
mvn clean install -f pom.xml
echo Building Docker image for exercise_service...
docker build -t exercise_service .
echo Tagging Docker image for exercise_service...
docker tag exercise_service mick0974/testsmellsgame:exercise_service

# Frontend
echo Building Docker image for frontend...
cd ../Frontend
docker build -t frontend .
echo Tagging Docker image for frontend...
docker tag frontend mick0974/testsmellsgame:frontend

# Leaderboard_service
echo Building Maven project for leaderboard_service...
cd ../Leaderboard_service
mvn clean install -f pom.xml
echo Building Docker image for leaderboard_service...
docker build -t leaderboard_service .
echo Tagging Docker image for leaderboard_service...
docker tag leaderboard_service mick0974/testsmellsgame:leaderboard_service

# User_service
echo Building Maven project for user_service...
cd ../User_service
mvn clean install -f pom.xml
echo Building Docker image for user_service...
docker build -t user_service .
echo Tagging Docker image for user_service...
docker tag user_service mick0974/testsmellsgame:user_service

# Api_gateway
echo Building Maven project for api_gateway...
cd ../Api_gateway
mvn clean install -f pom.xml
echo Building Docker image for api_gateway...
docker build -t api_gateway .
echo Tagging Docker image for api_gateway...
docker tag api_gateway mick0974/testsmellsgame:api_gateway

echo Build process complete.