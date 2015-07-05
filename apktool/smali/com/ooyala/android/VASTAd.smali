.class public Lcom/ooyala/android/VASTAd;
.super Ljava/lang/Object;
.source "VASTAd.java"


# instance fields
.field private _adID:Ljava/lang/String;

.field protected _description:Ljava/lang/String;

.field protected _errorURLs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _extensions:Lorg/w3c/dom/Element;

.field protected _impressionURLs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _numOfLinear:I

.field protected _sequence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ooyala/android/VASTSequenceItem;",
            ">;"
        }
    .end annotation
.end field

.field protected _surveyURLs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _system:Ljava/lang/String;

.field protected _systemVersion:Ljava/lang/String;

.field protected _title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/VASTAd;->_surveyURLs:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/VASTAd;->_errorURLs:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/VASTAd;->_impressionURLs:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/ooyala/android/VASTAd;->_numOfLinear:I

    .line 41
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string/jumbo v0, "id"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/VASTAd;->_adID:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p1}, Lcom/ooyala/android/VASTAd;->update(Lorg/w3c/dom/Element;)Z

    goto :goto_0
.end method


# virtual methods
.method protected addCreative(Lorg/w3c/dom/Element;)V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 144
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 145
    :goto_0
    if-eqz v1, :cond_2

    .line 146
    if-eqz v1, :cond_0

    instance-of v0, v1, Lorg/w3c/dom/Element;

    if-nez v0, :cond_1

    .line 147
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 150
    :cond_1
    const-string/jumbo v0, "sequence"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v1

    .line 154
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "Linear"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    new-instance v3, Lcom/ooyala/android/VASTLinearAd;

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {v3, v0}, Lcom/ooyala/android/VASTLinearAd;-><init>(Lorg/w3c/dom/Element;)V

    move-object v4, v5

    move-object v6, v5

    move-object v7, v3

    .line 161
    :goto_1
    if-nez v7, :cond_5

    if-nez v6, :cond_5

    if-nez v4, :cond_5

    .line 240
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    .line 156
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "NonLinearAds"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 157
    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v5

    move-object v6, v0

    move-object v7, v5

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 158
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "CompanionAds"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, v1

    .line 159
    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v0

    move-object v6, v5

    move-object v7, v5

    goto :goto_1

    .line 164
    :cond_5
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 165
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 166
    const/4 v3, 0x0

    .line 167
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/VASTSequenceItem;

    .line 168
    invoke-virtual {v0}, Lcom/ooyala/android/VASTSequenceItem;->getNumber()I

    move-result v10

    .line 172
    if-ne v10, v8, :cond_6

    .line 173
    if-eqz v7, :cond_a

    .line 174
    invoke-virtual {v0, v7}, Lcom/ooyala/android/VASTSequenceItem;->setLinear(Lcom/ooyala/android/VASTLinearAd;)V

    :cond_7
    :goto_2
    move v0, v2

    .line 185
    :goto_3
    if-nez v0, :cond_9

    .line 186
    new-instance v0, Lcom/ooyala/android/VASTSequenceItem;

    invoke-direct {v0}, Lcom/ooyala/android/VASTSequenceItem;-><init>()V

    .line 187
    invoke-virtual {v0, v8}, Lcom/ooyala/android/VASTSequenceItem;->setNumber(I)V

    .line 188
    if-eqz v7, :cond_c

    .line 189
    invoke-virtual {v0, v7}, Lcom/ooyala/android/VASTSequenceItem;->setLinear(Lcom/ooyala/android/VASTLinearAd;)V

    .line 195
    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_9
    :goto_5
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto/16 :goto_0

    .line 175
    :cond_a
    if-eqz v6, :cond_b

    .line 176
    invoke-virtual {v0, v6}, Lcom/ooyala/android/VASTSequenceItem;->setNonLinears(Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 177
    :cond_b
    if-eqz v4, :cond_7

    .line 178
    invoke-virtual {v0, v4}, Lcom/ooyala/android/VASTSequenceItem;->setCompanions(Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 190
    :cond_c
    if-eqz v6, :cond_d

    .line 191
    invoke-virtual {v0, v6}, Lcom/ooyala/android/VASTSequenceItem;->setNonLinears(Lorg/w3c/dom/Element;)V

    goto :goto_4

    .line 192
    :cond_d
    if-eqz v4, :cond_8

    .line 193
    invoke-virtual {v0, v4}, Lcom/ooyala/android/VASTSequenceItem;->setCompanions(Lorg/w3c/dom/Element;)V

    goto :goto_4

    .line 200
    :cond_e
    new-instance v0, Lcom/ooyala/android/VASTSequenceItem;

    invoke-direct {v0}, Lcom/ooyala/android/VASTSequenceItem;-><init>()V

    .line 201
    if-eqz v7, :cond_10

    .line 204
    iget-object v3, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/ooyala/android/VASTAd;->_numOfLinear:I

    if-le v3, v4, :cond_f

    .line 205
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    iget v3, p0, Lcom/ooyala/android/VASTAd;->_numOfLinear:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/VASTSequenceItem;

    .line 206
    invoke-virtual {v0, v7}, Lcom/ooyala/android/VASTSequenceItem;->setLinear(Lcom/ooyala/android/VASTLinearAd;)V

    .line 207
    iget v0, p0, Lcom/ooyala/android/VASTAd;->_numOfLinear:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ooyala/android/VASTAd;->_numOfLinear:I

    goto :goto_5

    .line 209
    :cond_f
    iget v3, p0, Lcom/ooyala/android/VASTAd;->_numOfLinear:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ooyala/android/VASTAd;->_numOfLinear:I

    .line 210
    iget v3, p0, Lcom/ooyala/android/VASTAd;->_numOfLinear:I

    invoke-virtual {v0, v3}, Lcom/ooyala/android/VASTSequenceItem;->setNumber(I)V

    .line 211
    invoke-virtual {v0, v7}, Lcom/ooyala/android/VASTSequenceItem;->setLinear(Lcom/ooyala/android/VASTLinearAd;)V

    .line 212
    iget-object v3, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 216
    :cond_10
    if-eqz v6, :cond_12

    .line 217
    iget-object v3, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_11

    .line 218
    invoke-virtual {v0, v2}, Lcom/ooyala/android/VASTSequenceItem;->setNumber(I)V

    .line 219
    invoke-virtual {v0, v6}, Lcom/ooyala/android/VASTSequenceItem;->setNonLinears(Lorg/w3c/dom/Element;)V

    .line 220
    iget-object v3, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 222
    :cond_11
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    iget-object v3, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/VASTSequenceItem;

    .line 223
    invoke-virtual {v0, v6}, Lcom/ooyala/android/VASTSequenceItem;->setNonLinears(Lorg/w3c/dom/Element;)V

    goto :goto_5

    .line 227
    :cond_12
    if-eqz v4, :cond_9

    .line 228
    iget-object v3, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_13

    .line 229
    invoke-virtual {v0, v2}, Lcom/ooyala/android/VASTSequenceItem;->setNumber(I)V

    .line 230
    invoke-virtual {v0, v4}, Lcom/ooyala/android/VASTSequenceItem;->setCompanions(Lorg/w3c/dom/Element;)V

    .line 231
    iget-object v3, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 233
    :cond_13
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    iget-object v3, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/VASTSequenceItem;

    .line 234
    invoke-virtual {v0, v4}, Lcom/ooyala/android/VASTSequenceItem;->setCompanions(Lorg/w3c/dom/Element;)V

    goto/16 :goto_5

    :cond_14
    move v0, v3

    goto/16 :goto_3

    :cond_15
    move-object v4, v5

    move-object v6, v5

    move-object v7, v5

    goto/16 :goto_1
.end method

.method public getAdID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_adID:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorURLs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_errorURLs:Ljava/util/List;

    return-object v0
.end method

.method public getExtensions()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_extensions:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getImpressionURLs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_impressionURLs:Ljava/util/List;

    return-object v0
.end method

.method public getSequence()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ooyala/android/VASTSequenceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    return-object v0
.end method

.method public getSurveyURLs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_surveyURLs:Ljava/util/List;

    return-object v0
.end method

.method public getSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_system:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_systemVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_title:Ljava/lang/String;

    return-object v0
.end method

.method update(Lorg/w3c/dom/Element;)Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 58
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    move v2, v5

    .line 60
    :goto_0
    if-eqz v1, :cond_13

    .line 61
    instance-of v0, v1, Lorg/w3c/dom/Element;

    if-nez v0, :cond_0

    .line 62
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 65
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "InLine"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object v0, v1

    .line 66
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "Wrapper"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 73
    new-instance v3, Lcom/ooyala/android/VASTWrapperAd;

    invoke-direct {v3, p1}, Lcom/ooyala/android/VASTWrapperAd;-><init>(Lorg/w3c/dom/Element;)V

    .line 74
    invoke-virtual {v3}, Lcom/ooyala/android/VASTWrapperAd;->getChildAdXML()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VASTAd;->update(Lorg/w3c/dom/Element;)Z

    .line 77
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_impressionURLs:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ooyala/android/VASTWrapperAd;->getImpressionURLs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/VASTSequenceItem;

    .line 81
    invoke-virtual {v0}, Lcom/ooyala/android/VASTSequenceItem;->getNumber()I

    move-result v7

    .line 83
    iget-object v2, v3, Lcom/ooyala/android/VASTWrapperAd;->_sequence:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/android/VASTSequenceItem;

    .line 84
    invoke-virtual {v2}, Lcom/ooyala/android/VASTSequenceItem;->getLinear()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v9

    .line 85
    invoke-virtual {v2}, Lcom/ooyala/android/VASTSequenceItem;->getNumber()I

    move-result v2

    .line 86
    if-eqz v9, :cond_2

    if-ne v2, v7, :cond_2

    .line 88
    invoke-virtual {v0}, Lcom/ooyala/android/VASTSequenceItem;->getLinear()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v2

    invoke-virtual {v9}, Lcom/ooyala/android/VASTLinearAd;->getTrackingEvents()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/ooyala/android/VASTLinearAd;->updateTrackingEvents(Ljava/util/HashMap;)V

    .line 89
    invoke-virtual {v0}, Lcom/ooyala/android/VASTSequenceItem;->getLinear()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v2

    invoke-virtual {v9}, Lcom/ooyala/android/VASTLinearAd;->getClickTrackingURLs()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/ooyala/android/VASTLinearAd;->updateClickTrackingURLs(Ljava/util/Set;)V

    goto :goto_1

    :cond_3
    move v0, v4

    .line 134
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    move v2, v0

    .line 135
    goto/16 :goto_0

    .line 93
    :cond_4
    if-eqz v3, :cond_12

    .line 95
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 96
    :goto_3
    if-eqz v2, :cond_11

    .line 97
    instance-of v0, v2, Lorg/w3c/dom/Element;

    if-nez v0, :cond_5

    .line 98
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_3

    .line 101
    :cond_5
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 102
    if-eqz v6, :cond_7

    move v3, v4

    .line 103
    :goto_4
    if-eqz v3, :cond_8

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "AdSystem"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 104
    iput-object v6, p0, Lcom/ooyala/android/VASTAd;->_system:Ljava/lang/String;

    move-object v0, v2

    .line 105
    check-cast v0, Lorg/w3c/dom/Element;

    const-string/jumbo v3, "version"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/VASTAd;->_systemVersion:Ljava/lang/String;

    .line 128
    :cond_6
    :goto_5
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_3

    :cond_7
    move v3, v5

    .line 102
    goto :goto_4

    .line 106
    :cond_8
    if-eqz v3, :cond_9

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "AdTitle"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 107
    iput-object v6, p0, Lcom/ooyala/android/VASTAd;->_title:Ljava/lang/String;

    goto :goto_5

    .line 108
    :cond_9
    if-eqz v3, :cond_a

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "Description"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 109
    iput-object v6, p0, Lcom/ooyala/android/VASTAd;->_description:Ljava/lang/String;

    goto :goto_5

    .line 110
    :cond_a
    if-eqz v3, :cond_b

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "Survey"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 111
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_surveyURLs:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 112
    :cond_b
    if-eqz v3, :cond_c

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "Error"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 113
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_errorURLs:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 114
    :cond_c
    if-eqz v3, :cond_d

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "Impression"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 115
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_impressionURLs:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    move-object v0, v2

    .line 116
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "Extensions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, v2

    .line 117
    check-cast v0, Lorg/w3c/dom/Element;

    iput-object v0, p0, Lcom/ooyala/android/VASTAd;->_extensions:Lorg/w3c/dom/Element;

    goto/16 :goto_5

    :cond_e
    move-object v0, v2

    .line 118
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "Creatives"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    .line 120
    :goto_6
    if-eqz v3, :cond_10

    .line 121
    instance-of v0, v3, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_f

    move-object v0, v3

    .line 122
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VASTAd;->addCreative(Lorg/w3c/dom/Element;)V

    .line 124
    :cond_f
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_6

    .line 126
    :cond_10
    iget-object v0, p0, Lcom/ooyala/android/VASTAd;->_sequence:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_5

    :cond_11
    move v0, v4

    .line 130
    goto/16 :goto_2

    .line 132
    :cond_12
    const-class v0, Lcom/ooyala/android/VASTAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "Error ad is not a wrapper or inline ad"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_2

    .line 136
    :cond_13
    return v2
.end method
