#!/bin/bash

ctags -R --exclude=.git --exclude=log --exclude=frontend --exclude=public --exclude=tmp./ `bundle show rails`/../*
