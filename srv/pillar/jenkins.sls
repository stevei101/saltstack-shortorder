jenkins:
  lookup:
    port: 80
    home: /var/lib/jenkins
    user: root
    group: jenkins
    server_name: localhost
    master_url: http://localhost:8080
    plugins:
      installed:
        - greenballs
    pkgs:
      - jenkins
