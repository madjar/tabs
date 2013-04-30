CHORDS = *.cho */*.cho

all: tabs.pdf

tabs.ps: $(CHORDS)
	chordii -i $(CHORDS) > tabs.ps

tabs.pdf: tabs.ps
	ps2pdf tabs.ps tabs.pdf

