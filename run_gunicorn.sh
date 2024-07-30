[Unit]
Description=Gunicorn instance to serve my Flask app
After=network.target

[Service]
User=your_user
Group=your_group
WorkingDirectory=/path/to/your/project
ExecStart=/usr/local/bin/gunicorn -w 4 -b 0.0.0.0:5000 app:app

[Install]
WantedBy=multi-user.target
