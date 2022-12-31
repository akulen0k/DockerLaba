c = get_config()
c.JupyterHub.authenticator_class = "dummyauthenticator.DummyAuthenticator"

c.DummyAuthenticator.admin_users = {"admin"} #admin_users автоматически добавляются в allowed_users, поэтому второе не нужно
c.DummyAuthenticator.password = "admin"