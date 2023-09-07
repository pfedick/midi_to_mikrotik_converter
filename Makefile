CXX			= g++ -std=gnu++17
EXTRA_CFLAGS = -ggdb -Wall
INCLUDE	= -Iinclude
CPPFLAGS	=
CXXFLAGS	= -g -O2
CFLAGS		=  $(INCLUDE) $(EXTRA_CFLAGS) -g -O2  -DHAVE_CONFIG_H   	-I/usr/include    \
	-I auto/include	-DBOOST_ALL_DYN_LINK -DDBOOST_LOG_DYN_LINK -D_DEBUG
LDFLAGS		= -no-pie
BOOSTLIBS= -lboost_atomic \
	-lboost_chrono \
	-lboost_container \
	-lboost_context \
	-lboost_contract \
	-lboost_coroutine \
	-lboost_date_time \
	-lboost_fiber \
	-lboost_filesystem \
	-lboost_graph \
	-lboost_iostreams \
	-lboost_json \
	-lboost_locale \
	-lboost_math_c99f \
	-lboost_math_c99l \
	-lboost_math_c99 \
	-lboost_math_tr1f \
	-lboost_math_tr1l \
	-lboost_math_tr1 \
	-lboost_nowide \
	-lboost_prg_exec_monitor \
	-lboost_program_options \
	-lboost_random \
	-lboost_regex \
	-lboost_serialization \
	-lboost_stacktrace_addr2line \
	-lboost_stacktrace_basic \
	-lboost_stacktrace_noop \
	-lboost_system \
	-lboost_thread \
	-lboost_timer \
	-lboost_type_erasure \
	-lboost_unit_test_framework \
	-lboost_wave \
	-lboost_wserialization \
	-lboost_log_setup \
	-lboost_log


LIBS		= -lm   -DBOOST_ALL_DYN_LINK -DDBOOST_LOG_DYN_LINK -L/usr/lib $(BOOSTLIBS) -lstdc++



PROGRAM	= mikrotik

OBJECTS= compile/ByteStream.o \
	compile/Event.o \
	compile/EventTempo.o \
	compile/MetaEventText.o \
	compile/MidiEventCode.o \
	compile/MidiEvent.o \
	compile/MidiFile.o \
	compile/MidiMetaEvent.o \
	compile/midi-to-mikrotik-converter.o \
	compile/MidiTrack.o \
	compile/Mikrotik.o \
	compile/MthdHeader.o \
	compile/Note.o \
	compile/Utils.o \
	compile/VLV.o \



$(PROGRAM): $(OBJECTS)
	$(CXX) -o $(PROGRAM) $(OBJECTS) $(LIBS)
	-chmod 755 $(PROGRAM)

all: $(PROGRAM)

compile/ByteStream.o: src/ByteStream.cpp Makefile
	- @mkdir -p compile
	$(CXX) -o compile/ByteStream.o -c src/ByteStream.cpp $(CFLAGS)

compile/Event.o: src/Event.cpp Makefile
	- @mkdir -p compile
	$(CXX) -o compile/Event.o -c src/Event.cpp $(CFLAGS)

compile/EventTempo.o: src/EventTempo.cpp Makefile
	- @mkdir -p compile
	$(CXX) -o compile/EventTempo.o -c src/EventTempo.cpp $(CFLAGS)

compile/MetaEventText.o: src/MetaEventText.cpp Makefile
	- @mkdir -p compile
	$(CXX) -o compile/MetaEventText.o -c src/MetaEventText.cpp $(CFLAGS)

compile/MidiEventCode.o: src/MidiEventCode.cpp Makefile
	- @mkdir -p compile
	$(CXX) -o compile/MidiEventCode.o -c src/MidiEventCode.cpp $(CFLAGS)

compile/MidiEvent.o: src/MidiEvent.cpp Makefile
	- @mkdir -p compile
	$(CXX) -o compile/MidiEvent.o -c src/MidiEvent.cpp $(CFLAGS)

compile/MidiFile.o: src/MidiFile.cpp Makefile
	- @mkdir -p compile
	$(CXX) -o compile/MidiFile.o -c src/MidiFile.cpp $(CFLAGS)

compile/MidiMetaEvent.o: src/MidiMetaEvent.cpp Makefile
	- @mkdir -p compile
	$(CXX) -o compile/MidiMetaEvent.o -c src/MidiMetaEvent.cpp $(CFLAGS)

compile/midi-to-mikrotik-converter.o: src/midi-to-mikrotik-converter.cpp Makefile
	- @mkdir -p compile
	$(CXX) -o compile/midi-to-mikrotik-converter.o -c src/midi-to-mikrotik-converter.cpp $(CFLAGS)

compile/MidiTrack.o: src/MidiTrack.cpp Makefile
	- @mkdir -p compile
	$(CXX) -o compile/MidiTrack.o -c src/MidiTrack.cpp $(CFLAGS)

compile/Mikrotik.o: src/Mikrotik.cpp Makefile
	- @mkdir -p compile
	$(CXX) -o compile/Mikrotik.o -c src/Mikrotik.cpp $(CFLAGS)

compile/MthdHeader.o: src/MthdHeader.cpp Makefile
	- @mkdir -p compile
	$(CXX) -o compile/MthdHeader.o -c src/MthdHeader.cpp $(CFLAGS)

compile/Note.o: src/Note.cpp Makefile
	- @mkdir -p compile
	$(CXX) -o compile/Note.o -c src/Note.cpp $(CFLAGS)

compile/Utils.o: src/Utils.cpp Makefile
	- @mkdir -p compile
	$(CXX) -o compile/Utils.o -c src/Utils.cpp $(CFLAGS)

compile/VLV.o: src/VLV.cpp Makefile
	- @mkdir -p compile
	$(CXX) -o compile/VLV.o -c src/VLV.cpp $(CFLAGS)
