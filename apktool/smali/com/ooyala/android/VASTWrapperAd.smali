.class public Lcom/ooyala/android/VASTWrapperAd;
.super Lcom/ooyala/android/VASTAd;
.source "VASTWrapperAd.java"


# instance fields
.field private _childAdXML:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/ooyala/android/VASTAd;-><init>(Lorg/w3c/dom/Element;)V

    .line 20
    return-void
.end method


# virtual methods
.method getChildAdXML()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ooyala/android/VASTWrapperAd;->_childAdXML:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method update(Lorg/w3c/dom/Element;)Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 24
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v9, v2

    .line 25
    :goto_0
    if-eqz v9, :cond_13

    .line 26
    instance-of v2, v9, Lorg/w3c/dom/Element;

    if-nez v2, :cond_0

    .line 27
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v9, v2

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    .line 32
    const/4 v5, 0x0

    .line 34
    :goto_1
    if-eqz v3, :cond_e

    .line 35
    instance-of v2, v3, Lorg/w3c/dom/Element;

    if-nez v2, :cond_1

    .line 36
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_1

    .line 39
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 40
    if-eqz v4, :cond_2

    move v8, v7

    .line 41
    :goto_2
    if-eqz v8, :cond_3

    move-object v2, v3

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "AdSystem"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 42
    iput-object v4, p0, Lcom/ooyala/android/VASTWrapperAd;->_system:Ljava/lang/String;

    move-object v2, v3

    .line 43
    check-cast v2, Lorg/w3c/dom/Element;

    const-string/jumbo v4, "version"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ooyala/android/VASTWrapperAd;->_systemVersion:Ljava/lang/String;

    move-object v2, v5

    .line 68
    :goto_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v5, v2

    .line 69
    goto :goto_1

    :cond_2
    move v8, v6

    .line 40
    goto :goto_2

    .line 44
    :cond_3
    if-eqz v8, :cond_4

    move-object v2, v3

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "AdTitle"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 45
    iput-object v4, p0, Lcom/ooyala/android/VASTWrapperAd;->_title:Ljava/lang/String;

    move-object v2, v5

    goto :goto_3

    .line 46
    :cond_4
    if-eqz v8, :cond_5

    move-object v2, v3

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "Description"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 47
    iput-object v4, p0, Lcom/ooyala/android/VASTWrapperAd;->_description:Ljava/lang/String;

    move-object v2, v5

    goto :goto_3

    .line 48
    :cond_5
    if-eqz v8, :cond_6

    move-object v2, v3

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "Survey"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 49
    iget-object v2, p0, Lcom/ooyala/android/VASTWrapperAd;->_surveyURLs:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_3

    .line 50
    :cond_6
    if-eqz v8, :cond_7

    move-object v2, v3

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "Error"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 51
    iget-object v2, p0, Lcom/ooyala/android/VASTWrapperAd;->_errorURLs:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_3

    .line 52
    :cond_7
    if-eqz v8, :cond_8

    move-object v2, v3

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "Impression"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 53
    iget-object v2, p0, Lcom/ooyala/android/VASTWrapperAd;->_impressionURLs:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_3

    :cond_8
    move-object v2, v3

    .line 54
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "Extensions"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, v3

    .line 55
    check-cast v2, Lorg/w3c/dom/Element;

    iput-object v2, p0, Lcom/ooyala/android/VASTWrapperAd;->_extensions:Lorg/w3c/dom/Element;

    move-object v2, v5

    goto/16 :goto_3

    :cond_9
    move-object v2, v3

    .line 56
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "VASTAdTagURI"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v2, v4

    .line 57
    goto/16 :goto_3

    :cond_a
    move-object v2, v3

    .line 58
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "Creatives"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 59
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    .line 60
    :goto_4
    if-eqz v4, :cond_c

    .line 61
    instance-of v2, v4, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_b

    move-object v2, v4

    .line 62
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v2}, Lcom/ooyala/android/VASTWrapperAd;->addCreative(Lorg/w3c/dom/Element;)V

    .line 64
    :cond_b
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    goto :goto_4

    .line 66
    :cond_c
    iget-object v2, p0, Lcom/ooyala/android/VASTWrapperAd;->_sequence:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_d
    move-object v2, v5

    goto/16 :goto_3

    .line 70
    :cond_e
    if-eqz v5, :cond_12

    .line 72
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 74
    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 75
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 76
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "VAST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v2, v6

    .line 94
    :goto_5
    return v2

    .line 77
    :cond_f
    const-string/jumbo v3, "version"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    cmpg-double v3, v4, v10

    if-gez v3, :cond_10

    move v2, v6

    goto :goto_5

    .line 79
    :cond_10
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    .line 80
    :goto_6
    if-eqz v3, :cond_12

    .line 81
    instance-of v2, v3, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_11

    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "Ad"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 83
    iput-object v3, p0, Lcom/ooyala/android/VASTWrapperAd;->_childAdXML:Lorg/w3c/dom/Node;

    .line 85
    :cond_11
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_6

    .line 87
    :catch_0
    move-exception v2

    .line 88
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERROR: Unable to fetch VAST ad tag info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v6

    .line 89
    goto :goto_5

    .line 92
    :cond_12
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v9, v2

    .line 93
    goto/16 :goto_0

    :cond_13
    move v2, v7

    .line 94
    goto :goto_5
.end method
