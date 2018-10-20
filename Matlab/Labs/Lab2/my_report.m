function p = my_report(fname)
opts.format = 'pdf';
opts.useNewFigure = false;
p = publish(fname,opts);