
class Extension
{
public:

    LPRDATA rdPtr;
    LPRH    rhPtr;

    Edif::Runtime Runtime;

    static const int MinimumBuild = 251;
    static const int Version = 1;

	static const int OEFLAGS = OEFLAG_SPRITES | OEFLAG_MOVEMENTS | OEFLAG_VALUES | OEFLAG_BACKSAVE;
	static const int OEPREFS = OEPREFS_BACKSAVE | OEPREFS_BACKEFFECTS | OEPREFS_INKEFFECTS | OEPREFS_KILL | OEPREFS_SCROLLINGINDEPENDANT;
    
    static const int WindowProcPriority = 100;

    Extension(LPRDATA rdPtr, LPEDATA edPtr, fpcob cobPtr);
    ~Extension();


    /*  Add any data you want to store in your extension to this class
        (eg. what you'd normally store in rdPtr)

        Unlike rdPtr, you can store real C++ objects with constructors
        and destructors, without having to call them manually or store
        a pointer.
    */
	TCHAR lastError[MAX_ERROR_STRING];
	bool isDebugLoggingEnabled;

    /*  Add your actions, conditions and expressions as real class member
        functions here. The arguments (and return type for expressions) must
        match EXACTLY what you defined in the JSON.

        Remember to link the actions, conditions and expressions to their
        numeric IDs in the class constructor (Extension.cpp)
    */

    /// Actions
	void OpenPDFFile(TCHAR* fileName);
	void ClosePDFFile();
	void SetCurrentPage(int pageNumber);
	
    /// Conditions
	bool OnOpened();

    /// Expressions
	TCHAR* LastError();
	int NumberOfPages();
	int CurrentPageNumber();

    /* These are called if there's no function linked to an ID */

    void Action(int ID, LPRDATA rdPtr, long param1, long param2);
    long Condition(int ID, LPRDATA rdPtr, long param1, long param2);
    long Expression(int ID, LPRDATA rdPtr, long param);




    /*  These replace the functions like HandleRunObject that used to be
        implemented in Runtime.cpp. They work exactly the same, but they're
        inside the extension class.
    */

    short Handle();
    short Display();

    short Pause();
    short Continue();

    bool Save(HANDLE File);
    bool Load(HANDLE File);

};