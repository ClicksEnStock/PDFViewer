        ��  ��                  �      �� ��     0 	        �4   V S _ V E R S I O N _ I N F O     ���                                           S t r i n g F i l e I n f o   �   0 4 0 9 0 4 e 4   4 
  C o m p a n y N a m e     C l i c k t e a m   @   F i l e D e s c r i p t i o n     E d i f   O b j e c t   *   F i l e V e r s i o n     2 . 0 0     0   I n t e r n a l N a m e   E d i f E x t   Z   L e g a l C o p y r i g h t   C o p y r i g h t   �   2 0 1 2   C l i c k t e a m     @   O r i g i n a l F i l e n a m e   E d i f E x t . m f x   :   P r o d u c t V e r s i o n   1 ,   0 ,   0 ,   1     2 	  S p e c i a l B u i l d   0 0 0 0 0 0 0 1     D    V a r F i l e I n f o     $    T r a n s l a t i o n     	�       ��
 ���     0 	        %Y}  (   E D I F   ��f       0 	        {
    "About": {
        "Name": "PDF Viewer Android Object",
        "Author": "Conceptgame",
        "Copyright": "Copyright (C) 2014 Conceptgame",
        "Comment": "PDF Viewer for Android, v1.0",
        "URL": "",
        "Help": "Help/PDFViewer/PDFViewer.chm",
        "Identifier": "PDFV"
    },
    "ActionMenu": [
		    "Separator",
        [
            0,
            "Open PDF File"
        ],
		    [
            1,
            "Close PDF File"
        ],
		    [
            2,
            "Set Current Page"
        ],
		    "Separator"
    ],
    "ConditionMenu": [
        [
            0,
            "On PDF file opened"
        ]
    ],
    "ExpressionMenu": [
		"Separator",
		 [
            0,
            "Last Error"
        ],
		[
            1,
            "Number of pages"
        ],
        [
            2,
            "Current page number"
        ],
		"Separator"
    ],
    "Actions": [
        {
            "Title": "Open PDF file %0",
            "Parameters": [
                [
                    "Text",
                    "PDF file name"
                ]
            ]
        },
		    {
            "Title": "Close PDF file"
        },
		    {
            "Title": "Set current page to %0",
            "Parameters": [
                [
                    "Integer",
                    "Page number (index based on 0)"
                ]
            ]
        }
    ],
    "Conditions": [
		    {
            "Title": "%o : On PDF file opened",
			      "Triggered": false
			}
    ],
    "Expressions": [
        {
            "Title": "LastError$(",
            "Returns": "Text"
        },
		{
            "Title": "NumberOfPages(",
            "Returns": "Integer"
        },
		{
            "Title": "CurrentPageNumber(",
            "Returns": "Integer"
        }
    ]
}
   &       �� ��     0	           M F 2                               p       �� ���    0	         D e b u g  E n a b l e   d e b u g   l o g g i n g  L o g   d e b u g   i n f o s                           