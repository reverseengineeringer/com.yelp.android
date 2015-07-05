.class public Lcom/ooyala/android/Caption;
.super Ljava/lang/Object;
.source "Caption.java"


# instance fields
.field protected _begin:D

.field protected _end:D

.field protected _text:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide v0, p0, Lcom/ooyala/android/Caption;->_begin:D

    .line 7
    iput-wide v0, p0, Lcom/ooyala/android/Caption;->_end:D

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/Caption;->_text:Ljava/lang/String;

    .line 10
    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide v2, p0, Lcom/ooyala/android/Caption;->_begin:D

    .line 7
    iput-wide v2, p0, Lcom/ooyala/android/Caption;->_end:D

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/Caption;->_text:Ljava/lang/String;

    .line 13
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "p"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    return-void

    .line 15
    :cond_1
    const-string/jumbo v0, "begin"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    const-string/jumbo v2, "dur"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    const-string/jumbo v3, "end"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v0}, Lcom/ooyala/android/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 20
    invoke-static {v0}, Lcom/ooyala/android/Utils;->secondsFromTimeString(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/ooyala/android/Caption;->_begin:D

    .line 22
    invoke-static {v3}, Lcom/ooyala/android/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    invoke-static {v3}, Lcom/ooyala/android/Utils;->secondsFromTimeString(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ooyala/android/Caption;->_end:D

    .line 30
    :goto_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ooyala/android/Caption;->_text:Ljava/lang/String;

    move v0, v1

    .line 31
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 32
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "[\r\n]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ooyala/android/Caption;->_text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ooyala/android/Caption;->_text:Ljava/lang/String;

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 24
    :cond_2
    invoke-static {v2}, Lcom/ooyala/android/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-wide v4, p0, Lcom/ooyala/android/Caption;->_begin:D

    invoke-static {v2}, Lcom/ooyala/android/Utils;->secondsFromTimeString(Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/ooyala/android/Caption;->_end:D

    goto :goto_0

    .line 35
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ooyala/android/Caption;->_text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ooyala/android/Caption;->_text:Ljava/lang/String;

    .line 31
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getBegin()D
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/ooyala/android/Caption;->_begin:D

    return-wide v0
.end method

.method public getEnd()D
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/ooyala/android/Caption;->_end:D

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ooyala/android/Caption;->_text:Ljava/lang/String;

    return-object v0
.end method
