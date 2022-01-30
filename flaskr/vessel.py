from flask import (
    Blueprint, flash, g, redirect, render_template, request, url_for
)
from werkzeug.exceptions import abort

from flaskr.auth import login_required
from flaskr.db import get_db

bp = Blueprint('vessel', __name__)

@bp.route('/')
def index():
    db = get_db()
    
    return render_template('vessel/index.html')

# async
def get_nearby_locations():
    # Return nearby vessel locations based on current location...
    return