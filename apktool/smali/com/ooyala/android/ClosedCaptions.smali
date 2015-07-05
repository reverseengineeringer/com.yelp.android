.class public Lcom/ooyala/android/ClosedCaptions;
.super Ljava/lang/Object;
.source "ClosedCaptions.java"


# instance fields
.field protected _captions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ooyala/android/Caption;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _defaultLanguage:Ljava/lang/String;

.field protected _languages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _styles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _url:Ljava/net/URL;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/ClosedCaptions;->_languages:Ljava/util/Set;

    .line 29
    iput-object v1, p0, Lcom/ooyala/android/ClosedCaptions;->_defaultLanguage:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/ooyala/android/ClosedCaptions;->_url:Ljava/net/URL;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/ClosedCaptions;->_styles:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/ClosedCaptions;->_captions:Ljava/util/Map;

    .line 34
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/ClosedCaptions;->_languages:Ljava/util/Set;

    .line 29
    iput-object v1, p0, Lcom/ooyala/android/ClosedCaptions;->_defaultLanguage:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/ooyala/android/ClosedCaptions;->_url:Ljava/net/URL;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/ClosedCaptions;->_styles:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/ClosedCaptions;->_captions:Ljava/util/Map;

    .line 37
    invoke-virtual {p0, p1}, Lcom/ooyala/android/ClosedCaptions;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    .line 38
    return-void
.end method

.method private parseBodyXML(Lorg/w3c/dom/Element;)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "body"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return v3

    .line 117
    :cond_0
    const-string/jumbo v0, "div"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v2, v3

    .line 118
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 119
    invoke-interface {v5, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 120
    const-string/jumbo v1, "xml:lang"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1}, Lcom/ooyala/android/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    .line 122
    :goto_2
    const-string/jumbo v4, "begin"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-static {v4}, Lcom/ooyala/android/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_3

    .line 118
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 121
    :cond_2
    iget-object v4, p0, Lcom/ooyala/android/ClosedCaptions;->_captions:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_2

    .line 127
    :cond_3
    const-string/jumbo v4, "p"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move v4, v3

    .line 128
    :goto_3
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 129
    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 130
    new-instance v7, Lcom/ooyala/android/Caption;

    invoke-direct {v7, v0}, Lcom/ooyala/android/Caption;-><init>(Lorg/w3c/dom/Element;)V

    .line 131
    if-eqz v7, :cond_4

    .line 132
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    .line 137
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private parseHeadXML(Lorg/w3c/dom/Element;)Z
    .locals 2

    .prologue
    .line 104
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "head"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private update(Lorg/w3c/dom/Element;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 153
    :goto_0
    return v0

    .line 143
    :cond_0
    const-string/jumbo v0, "head"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_1

    .line 145
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {p0, v0}, Lcom/ooyala/android/ClosedCaptions;->parseHeadXML(Lorg/w3c/dom/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 148
    :cond_1
    const-string/jumbo v0, "body"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_2

    .line 150
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {p0, v0}, Lcom/ooyala/android/ClosedCaptions;->parseBodyXML(Lorg/w3c/dom/Element;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 153
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public closedCaptionsForLanguage(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ooyala/android/Caption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/ooyala/android/ClosedCaptions;->_captions:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public fetchClosedCaptionsInfo()Z
    .locals 4

    .prologue
    .line 162
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 164
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lcom/ooyala/android/ClosedCaptions;->_url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 166
    invoke-direct {p0, v0}, Lcom/ooyala/android/ClosedCaptions;->update(Lorg/w3c/dom/Element;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 169
    :goto_0
    return v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR: Unable to fetch closed captions info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCaption(Ljava/lang/String;D)Lcom/ooyala/android/Caption;
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 190
    invoke-virtual {p0, p1}, Lcom/ooyala/android/ClosedCaptions;->closedCaptionsForLanguage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 191
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 222
    :goto_0
    return-object v0

    .line 194
    :cond_1
    const/4 v5, -0x1

    .line 195
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 196
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    move v1, v4

    move v6, v5

    move v5, v0

    .line 199
    :goto_1
    if-ltz v2, :cond_7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 201
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Caption;

    .line 202
    invoke-virtual {v0}, Lcom/ooyala/android/Caption;->getBegin()D

    move-result-wide v8

    cmpg-double v8, v8, p2

    if-gtz v8, :cond_2

    invoke-virtual {v0}, Lcom/ooyala/android/Caption;->getEnd()D

    move-result-wide v8

    cmpg-double v8, p2, v8

    if-gez v8, :cond_2

    .line 203
    const/4 v0, 0x1

    .line 221
    :goto_2
    if-eqz v0, :cond_6

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Caption;

    goto :goto_0

    .line 207
    :cond_2
    if-ne v6, v5, :cond_3

    move v0, v4

    .line 208
    goto :goto_2

    .line 210
    :cond_3
    if-ne v2, v1, :cond_4

    move v0, v4

    .line 211
    goto :goto_2

    .line 213
    :cond_4
    invoke-virtual {v0}, Lcom/ooyala/android/Caption;->getBegin()D

    move-result-wide v8

    cmpg-double v0, p2, v8

    if-gez v0, :cond_5

    .line 214
    add-int/lit8 v0, v5, -0x1

    move v10, v1

    move v1, v0

    move v0, v10

    .line 219
    :goto_3
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    move v6, v5

    move v5, v2

    move v2, v1

    move v1, v0

    .line 220
    goto :goto_1

    .line 216
    :cond_5
    add-int/lit8 v0, v5, 0x1

    move v1, v2

    goto :goto_3

    :cond_6
    move-object v0, v3

    .line 222
    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_2
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ooyala/android/ClosedCaptions;->_defaultLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ooyala/android/ClosedCaptions;->_languages:Ljava/util/Set;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ooyala/android/ClosedCaptions;->_url:Ljava/net/URL;

    return-object v0
.end method

.method update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    .locals 6

    .prologue
    .line 41
    if-nez p1, :cond_0

    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    .line 76
    :goto_0
    return-object v0

    .line 44
    :cond_0
    :try_start_0
    const-string/jumbo v0, "languages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "ERROR: Fail to update closed captions because no languages exist!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_0

    .line 48
    :cond_1
    const-string/jumbo v0, "languages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 50
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "ERROR: Fail to update closed captions because no url exists!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_0

    .line 54
    :cond_2
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    iget-object v0, p0, Lcom/ooyala/android/ClosedCaptions;->_languages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 57
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 58
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    iget-object v4, p0, Lcom/ooyala/android/ClosedCaptions;->_languages:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v4, p0, Lcom/ooyala/android/ClosedCaptions;->_captions:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    :cond_3
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ooyala/android/ClosedCaptions;->_url:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :try_start_2
    const-string/jumbo v0, "default_language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 70
    const-string/jumbo v0, "default_language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/ClosedCaptions;->_defaultLanguage:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 76
    :cond_4
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    :try_start_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR: Fail to update closed captions because url is invalid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 72
    :catch_1
    move-exception v0

    .line 73
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JSONException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_0
.end method
