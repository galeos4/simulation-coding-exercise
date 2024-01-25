CC = g++
EXEC = simulation

CFLAGS = $(shell sdl-config --cflags) $(shell sdl-config --libs) -lSDL_ttf

SRCS = main.cc \
		block.cc \
		map.cc \
		vehicle.cc \
		miner.cc \
		scout.cc \
		rescuer.cc \
		map_graphics.cc \
		input.cc \
		button.cc \
		control_panel.cc \
		map_general_panel.cc \
		secondary_panel.cc

OBJS = $(subst .cc,.o,$(SRCS))
INC = .

.cc.o:
		${CC} ${CFLAGS} -I ${INC} -c $< -o $@ 

all: ${EXEC}

${EXEC}: ${OBJS}
		${CC} ${CFLAGS} -o $@ ${OBJS}

clean:
		rm -f ${EXEC} ${OBJS}