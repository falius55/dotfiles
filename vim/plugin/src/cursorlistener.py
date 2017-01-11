class CursorListener(object):

    def __init__(self, stateManager, opener):
        self._state = stateManager
        self._opener = opener

    def onCursorMoved(self):
        if self._state.isInMemoBuffer():
            return

        if self._state.isAlltimeMemoWindow():
            self._onAlltime()
        else:
            self._onRequired()

    def _onRequired(self):
        if self._state.hasMemoOfCurrentLine():
            self._opener.openContent()
        else:
            self._opener.close()

    def _onAlltime(self):
        if not self._state.isSummary() and self._state.hasMemoOfCurrentLine():
            self._opener.openContent(False)
        else:
            self._opener.openSummary(False)
