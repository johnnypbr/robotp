from invoke import task, Collection


@task(default=True)
def configure_env(c):
    c.run('virtualenv venv3 -p python3.9')


env = Collection(configure=configure_env)

@task(default=True)
def install(c):
    with c.prefix('source venv3/bin/activate'):
        c.run('pip install -r requirements.txt')

@task
def execute(c):
    with c.prefix('source venv3/bin/activate'):
        c.run('robot valid_login.robot')


ns = Collection(env=env, install=install,
                execute=execute)
