#ifndef MIKROTIK_HPP
#define MIKROTIK_HPP

#include "MtrkHeader.h"
#include "Note.h"
#include <vector>

class Mikrotik
{
public:
	Mikrotik(MtrkHeader &track, 
		const uint64_t index, 
		const int octaveShift, 
		const int noteShift, 
		const double fineTuning,
		const bool commentsFlag
	);
	~Mikrotik();
	void setTimeCommentsAfterEachMs(const double stepMs);
	std::string getTrackTimeLength(const uint8_t channel);
	std::string getNotesCount(const uint8_t channel);
	std::string getScriptHeader(const uint8_t channel);
	std::string getDelayLine(const double delayMs);
	std::string getBeepLine(Note note);
	std::string buildNote(Note note);
	int buildScriptForChannel(std::string &fileName, const uint8_t channel);
	int buildScript(std::string &fileName);
private:
	std::string getTimeAsText(const double time);
	std::string getCurrentTimeMarker();
private:
	bool m_commentsFlag = false;
	uint64_t m_index = 0;
	int m_octaveShift = 0;
	int m_noteShift = 0;
	double m_fineTuning = 0.0;
	double m_processedTime = 0.0;
	double m_nextTimestampMarker = 0.0;
	double m_timestampMarkerStep = 0.0;
	MtrkHeader m_track;
};

#endif // MIKROTIK_HPP
