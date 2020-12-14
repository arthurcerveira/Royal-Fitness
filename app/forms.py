from flask_wtf import FlaskForm
from wtforms import StringField, IntegerField, PasswordField, SubmitField, SelectField, FloatField
from wtforms.validators import DataRequired, Length


class ClassRegisterForm(FlaskForm):
    user_id = StringField('Member CPF',
                          validators=[DataRequired(), Length(min=11, max=11)])

    submit = SubmitField('Enroll »')


class MemberRegisterForm(FlaskForm):
    cpf = StringField('Member CPF',
                      validators=[DataRequired(), Length(min=11, max=11)])

    name = StringField('Name',
                       validators=[DataRequired(), Length(min=2, max=30)])

    phone_number = StringField('Phone number',
                               validators=[DataRequired(), Length(min=3, max=20)])

    picture_url = StringField('Picture URL',
                              validators=[Length(max=500)])

    date_of_birth = StringField('Date of Birth (YYYY/MM/DD)',
                                validators=[Length(min=10, max=10)])

    is_premium = SelectField('Premium user',
                             choices=[(False, 'Regular User'),
                                      (True, 'Premium User')],
                             validators=[DataRequired()])

    personal_trainer = SelectField('Personal Trainer',
                                   validators=[DataRequired()])

    submit = SubmitField('Register member')


class MemberRoutineForm(FlaskForm):
    day = SelectField('Day of the week',
                      choices=[('monday', 'Monday'),
                               ('tuesday', 'Tuesday'),
                               ('wednesday', 'Wednesday'),
                               ('thursday', 'Thursday'),
                               ('friday', 'Friday'),
                               ('saturday', 'Saturday'),
                               ('sunday', 'Sunday'), ],
                      validators=[DataRequired()])

    exercise = SelectField('Exercise',
                           validators=[DataRequired()])

    sets = IntegerField('Sets',
                        validators=[DataRequired()])

    repetitions = IntegerField('Repetitions',
                               validators=[DataRequired()])

    weight = FloatField('Weight',
                        validators=[DataRequired()])

    submit = SubmitField('Add exercise')


class AdminLoginForm(FlaskForm):
    cpf = StringField('Admin CPF',
                      validators=[DataRequired(), Length(min=11, max=11)])

    password = PasswordField('Admin Password',
                             validators=[DataRequired()])

    submit = SubmitField('Login')
