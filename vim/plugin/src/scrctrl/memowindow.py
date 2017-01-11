#!/usr/bin/python3.4
# -*- coding: utf-8 -*-
from scrctrl.window import WindowBuilder
from scrctrl.window import Window


class MemoWindow(Window):

    def __init__(self, window, vim):
        Window.__init__(self, window, vim)
        self.setOption('winfixheight', True)


class MemoWindowBuilder(WindowBuilder):
    pass
