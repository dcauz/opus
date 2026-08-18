#pragma once

class Time
{
public:
	Time( int h, int m, int s, int ms );
	// TODO
	unsigned toUint32() const;

private:
	unsigned char h_;
	unsigned char m_;
	unsigned char s_;
	unsigned int  ms_;
};

class Hour
{
public:
	Hour( int h );

private:
	int h_;
};

class Minute
{
public:
	Minute( int m );

private:
	int m_;
};

class Second
{
public:
	Second( int s );

private:
	int s_;
};
