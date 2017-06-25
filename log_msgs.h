
#if !defined(LOG_MESSAGES_H) || defined(DEFINE_MSGS)
#define LOG_MESSAGES_H

#ifdef DEFINE_MSGS

struct LogMsg
{
	LogMsgCode	code_;
	const char  * codeName_;
	int         level_;
	const char	* text_;
	const char  * action_;
};

#define START_MSGS LogMsg logMsgs[] = {

#define END_MSGS };

#define MSG(c,l,t)		{ c, #c, static_cast<int>(l), t },
#define EMSG(c,l,t,a)	{ c, #c, static_cast<int>(l), t,a },

#else

#define START_MSGS enum LogMsgCode {

#define END_MSGS };

#define MSG(c,l,t)		c,
#define EMSG(c,l,t,a)	c,

#endif

///////////////////////////////////////////////////////////////////////////////

START_MSGS

MSG( TEXT,        Log::Level::INFO, "%s" )
MSG( INV_CONTINUE,Log::Level::FATAL, "continue was not contained in nesting statement" )
MSG( INV_BREAK,   Log::Level::FATAL, "break was not contained in nesting statement" )

END_MSGS

#undef START_MSGS
#undef END_MSGS
#undef MSG
#undef EMSG

#endif
