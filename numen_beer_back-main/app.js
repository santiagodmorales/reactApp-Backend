const createError = require('http-errors');
const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const cors = require('cors')
require('dotenv').config()

const swaggerJsDoc = require("swagger-jsdoc");
const swaggerUi = require("swagger-ui-express");
const SwaggerOPtions = require("./swaggerOptions");

const indexRouter = require('./routes/index');
const authRouter = require('./routes/auth');
const productsRouter = require('./routes/admin/prods');
const contactsRouter = require('./routes/contacts');
const userRouter = require('./routes/admin/users');
const prodataRouter = require('./routes/prodata');
const carrouselRouter = require('./routes/carrousel');

const app = express();

app.use(cors());


// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


const specs = swaggerJsDoc(SwaggerOPtions);

app.use('/', indexRouter);
app.use('/auth', authRouter);
app.use('/products', productsRouter);
app.use('/contacts', contactsRouter);
app.use('/users', userRouter);
app.use('/prodata', prodataRouter);
app.use('/carrousel', carrouselRouter);

app.use('/docs',swaggerUi.serve, swaggerUi.setup(specs))


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
