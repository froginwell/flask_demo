from flask import Flask

from pymkt import log, statsd


logger = log.get_logger('flask_demo')


app = Flask('flask_demo')


@app.route('/hello/<who>')
@app.route('/hello')
def hello(who='world'):
    statsd.incr('flask_demo.hello.invoked')
    logger.info(who)
    return 'hello {}\n'.format(who)
