.class public Lcom/ooyala/android/VASTAdSpot;
.super Lcom/ooyala/android/AdSpot;
.source "VASTAdSpot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/android/VASTAdSpot$1;,
        Lcom/ooyala/android/VASTAdSpot$FetchPlaybackInfoTask;
    }
.end annotation


# static fields
.field static final URL_STRINGS_TO_REPLACE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected _ads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ooyala/android/VASTAd;",
            ">;"
        }
    .end annotation
.end field

.field protected _expires:J

.field protected _signature:Ljava/lang/String;

.field protected _vastURL:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "%5BPlace_Random_Number_Here%5D"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "[Place_Random_Number_Here]"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "%3Cnow%3E"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "%3Crand-num%3E"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "[TIMESTAMP]"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "%5BTIMESTAMP%5E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "[timestamp]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "%5Btimestamp%5E"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ooyala/android/VASTAdSpot;->URL_STRINGS_TO_REPLACE:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/net/URL;Ljava/util/List;Ljava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/ooyala/android/AdSpot;-><init>(ILjava/net/URL;Ljava/util/List;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/VASTAdSpot;->_ads:Ljava/util/List;

    .line 44
    invoke-virtual {p4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/android/VASTAdSpot;->urlFromAdUrlString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/VASTAdSpot;->_vastURL:Ljava/net/URL;

    .line 46
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/ooyala/android/AdSpot;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/VASTAdSpot;->_ads:Ljava/util/List;

    .line 54
    iput-object p2, p0, Lcom/ooyala/android/VASTAdSpot;->_api:Lcom/ooyala/android/PlayerAPIClient;

    .line 55
    invoke-virtual {p0, p1}, Lcom/ooyala/android/VASTAdSpot;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    .line 56
    return-void
.end method

.method public static urlFromAdUrlString(Ljava/lang/String;)Ljava/net/URL;
    .locals 6

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    sget-object v0, Lcom/ooyala/android/VASTAdSpot;->URL_STRINGS_TO_REPLACE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, p0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 177
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_1
    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-class v0, Lcom/ooyala/android/VASTAdSpot;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed VAST URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public fetchPlaybackInfo(Lcom/ooyala/android/FetchPlaybackInfoCallback;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lcom/ooyala/android/VASTAdSpot$FetchPlaybackInfoTask;

    invoke-direct {v0, p0, p1}, Lcom/ooyala/android/VASTAdSpot$FetchPlaybackInfoTask;-><init>(Lcom/ooyala/android/VASTAdSpot;Lcom/ooyala/android/FetchPlaybackInfoCallback;)V

    .line 158
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/VASTAdSpot$FetchPlaybackInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    return-object v0
.end method

.method public fetchPlaybackInfo()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 109
    iget-object v2, p0, Lcom/ooyala/android/VASTAdSpot;->_vastURL:Ljava/net/URL;

    if-nez v2, :cond_0

    move v2, v4

    .line 134
    :goto_0
    return v2

    .line 111
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/ooyala/android/VASTAdSpot;->_vastURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 114
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 115
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "VAST"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v4

    goto :goto_0

    .line 116
    :cond_1
    const-string/jumbo v3, "version"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpg-double v3, v6, v8

    if-gez v3, :cond_2

    move v2, v4

    goto :goto_0

    .line 118
    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    .line 119
    :goto_1
    if-eqz v3, :cond_6

    .line 120
    instance-of v2, v3, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_3

    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "Ad"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 121
    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_1

    .line 124
    :cond_4
    new-instance v5, Lcom/ooyala/android/VASTAd;

    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    invoke-direct {v5, v2}, Lcom/ooyala/android/VASTAd;-><init>(Lorg/w3c/dom/Element;)V

    .line 125
    if-eqz v5, :cond_5

    .line 126
    iget-object v2, p0, Lcom/ooyala/android/VASTAdSpot;->_ads:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_5
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 130
    :catch_0
    move-exception v2

    .line 131
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ERROR: Unable to fetch VAST ad tag info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v4

    .line 132
    goto/16 :goto_0

    .line 134
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public getAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ooyala/android/VASTAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ooyala/android/VASTAdSpot;->_ads:Ljava/util/List;

    return-object v0
.end method

.method public getVASTURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/ooyala/android/VASTAdSpot;->_vastURL:Ljava/net/URL;

    return-object v0
.end method

.method update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;
    .locals 4

    .prologue
    .line 64
    sget-object v0, Lcom/ooyala/android/VASTAdSpot$1;->$SwitchMap$com$ooyala$android$Constants$ReturnState:[I

    invoke-super {p0, p1}, Lcom/ooyala/android/AdSpot;->update(Lorg/json/JSONObject;)Lcom/ooyala/android/Constants$ReturnState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/android/Constants$ReturnState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    const-string/jumbo v0, "signature"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ERROR: Fail to update VASTAd with dictionary because no signature exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    .line 98
    :goto_0
    return-object v0

    .line 66
    :pswitch_0
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_0

    .line 68
    :pswitch_1
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_UNMATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_0

    .line 77
    :cond_0
    const-string/jumbo v0, "expires"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ERROR: Fail to update VASTAd with dictionary because no expires exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_0

    .line 82
    :cond_1
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ERROR: Fail to update VASTAd with dictionary because no url exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto :goto_0

    .line 87
    :cond_2
    :try_start_0
    const-string/jumbo v0, "signature"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/VASTAdSpot;->_signature:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "expires"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ooyala/android/VASTAdSpot;->_expires:J

    .line 89
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/android/VASTAdSpot;->urlFromAdUrlString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/VASTAdSpot;->_vastURL:Ljava/net/URL;

    .line 90
    iget-object v0, p0, Lcom/ooyala/android/VASTAdSpot;->_vastURL:Ljava/net/URL;

    if-nez v0, :cond_3

    .line 91
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JSONException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_0

    .line 98
    :cond_3
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    goto/16 :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
