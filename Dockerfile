FROM microsoft/aspnetcore:2.1.0-preview2-aspnetcore-runtime

# Next, this Dockerfile creates a directory for your application
WORKDIR /app
COPY BlazorApp/bin/Release/netstandard2.0/publish .

# The final instruction copies the site you published earlier into the container.
ENTRYPOINT ["dotnet", "BlazorApp.dll"]
