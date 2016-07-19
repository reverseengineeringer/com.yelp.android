.class public Lcom/yelp/android/serializable/Event;
.super Lcom/yelp/android/serializable/_Event;
.source "Event.java"

# interfaces
.implements Lcom/yelp/android/serializable/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/Event$EventType;,
        Lcom/yelp/android/serializable/Event$SubscriptionStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 454
    new-instance v0, Lcom/yelp/android/serializable/Event$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Event$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Event;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Event;-><init>()V

    .line 133
    return-void
.end method

.method private M()Z
    .locals 4

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->q()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->q()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 382
    sget-object v0, Lcom/yelp/android/serializable/Event;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v0, p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 383
    invoke-direct {v0, p2}, Lcom/yelp/android/serializable/Event;->c(Lorg/json/JSONObject;)V

    .line 384
    invoke-direct {v0, p1}, Lcom/yelp/android/serializable/Event;->b(Lorg/json/JSONObject;)V

    .line 385
    return-object v0
.end method

.method private a(D)Ljava/lang/String;
    .locals 7

    .prologue
    .line 416
    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->s:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 417
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 418
    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 419
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 420
    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 419
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 369
    sget-object v0, Lcom/yelp/android/serializable/Event;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {p0, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v3

    .line 370
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 371
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 372
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    :goto_1
    invoke-direct {v0, v2}, Lcom/yelp/android/serializable/Event;->c(Lorg/json/JSONObject;)V

    .line 374
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yelp/android/serializable/Event;->b(Lorg/json/JSONObject;)V

    .line 370
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 372
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 376
    :cond_1
    return-object v3
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 447
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/a;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/Event;->v:Lcom/yelp/android/serializable/User;

    .line 448
    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 390
    const-string/jumbo v1, "%s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->l()J

    move-result-wide v4

    invoke-static {p1, v0, v4, v5}, Lcom/yelp/android/services/f;->a(Landroid/content/Context;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0702b6

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->l()J

    move-result-wide v6

    invoke-static {v4, v0, v6, v7}, Lcom/yelp/android/services/f;->a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 451
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/serializable/Event;->w:Lcom/yelp/android/serializable/YelpBusiness;

    .line 452
    return-void

    .line 451
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v0, p1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 399
    const-string/jumbo v1, "%s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->k()J

    move-result-wide v4

    invoke-static {p1, v0, v4, v5}, Lcom/yelp/android/services/f;->a(Landroid/content/Context;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0702b6

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->k()J

    move-result-wide v6

    invoke-static {v4, v0, v6, v7}, Lcom/yelp/android/services/f;->a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic J()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->J()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic K()Lcom/yelp/android/serializable/Event$EventType;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->K()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L()Lcom/yelp/android/serializable/EventRsvp;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->c:Lcom/yelp/android/serializable/Photo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->c:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v10, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 187
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->l()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 188
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->K()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    if-ne v1, v2, :cond_0

    .line 189
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/Event;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 192
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->k()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 193
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 194
    invoke-static {v0, v1, v2}, Lcom/yelp/android/services/f;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    const v0, 0x7f0702b6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->k()J

    move-result-wide v4

    cmp-long v1, v4, v10

    if-eqz v1, :cond_1

    .line 197
    const-string/jumbo v1, "%s %s - %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->l()J

    move-result-wide v4

    invoke-static {p1, v2, v4, v5}, Lcom/yelp/android/services/f;->a(Landroid/content/Context;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->l()J

    move-result-wide v4

    invoke-static {v0, v2, v4, v5}, Lcom/yelp/android/services/f;->a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->k()J

    move-result-wide v4

    invoke-static {v0, v2, v4, v5}, Lcom/yelp/android/services/f;->a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_1
    const-string/jumbo v1, "%s %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->l()J

    move-result-wide v4

    invoke-static {p1, v2, v4, v5}, Lcom/yelp/android/services/f;->a(Landroid/content/Context;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->l()J

    move-result-wide v4

    invoke-static {v0, v2, v4, v5}, Lcom/yelp/android/services/f;->a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->k()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_3

    .line 210
    const-string/jumbo v0, "%s - %s"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/Event;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/Event;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 213
    :cond_3
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/Event;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/yelp/android/serializable/Event;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-object p1

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->p()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->q()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/serializable/Event;->a(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 224
    :cond_1
    const-string/jumbo v0, "%s - %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->q()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/yelp/android/serializable/Event;->a(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->p()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/yelp/android/serializable/Event;->a(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Event;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->getValueString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Event;->t:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/EventRsvp;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/yelp/android/serializable/Event;->a:Lcom/yelp/android/serializable/EventRsvp;

    .line 328
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    if-nez p1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 321
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 322
    invoke-interface {p1, v0, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Event;->a(Lorg/json/JSONObject;)V

    .line 146
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Event$EventType;->getEventType(Ljava/lang/String;)Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Event;->b:Lcom/yelp/android/serializable/Event$EventType;

    .line 147
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/yelp/android/serializable/Event;->y:Z

    .line 332
    return-void
.end method

.method public b()Lcom/google/android/gms/maps/model/LatLng;
    .locals 6

    .prologue
    .line 152
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->o()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->n()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[\n]+"

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-direct {p0}, Lcom/yelp/android/serializable/Event;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    :goto_0
    return-object v0

    .line 237
    :cond_0
    const v1, 0x7f0702ec

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/serializable/Event;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    const v2, 0x7f0706ec

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f070229

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 243
    const v2, 0x7f070715

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/yelp/android/serializable/Event;->d:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->w:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->t()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->t()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->t()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string/jumbo v1, "<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    const-string/jumbo v1, "<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    const v2, 0x7f07044e

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 267
    const-string/jumbo v1, "<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    const v2, 0x7f0705dc

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_2
    const-string/jumbo v1, "<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    const v2, 0x7f070229

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    const v2, 0x7f0702ec

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/serializable/Event;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->describeContents()I

    move-result v0

    return v0
.end method

.method public e()J
    .locals 6

    .prologue
    .line 283
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->l()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 285
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 286
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 166
    instance-of v0, p1, Lcom/yelp/android/serializable/Event;

    if-eqz v0, :cond_0

    .line 167
    check-cast p1, Lcom/yelp/android/serializable/Event;

    .line 168
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()J
    .locals 6

    .prologue
    .line 293
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 294
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->k()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 295
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 296
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/yelp/android/serializable/Event$SubscriptionStatus;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->statusFromString(Ljava/lang/String;)Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->a:Lcom/yelp/android/serializable/EventRsvp;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->h()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v0

    sget-object v3, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    if-eq v0, v3, :cond_2

    move v0, v1

    .line 353
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/serializable/Event;->a:Lcom/yelp/android/serializable/EventRsvp;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yelp/android/serializable/Event;->a:Lcom/yelp/android/serializable/EventRsvp;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/EventRsvp;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    .line 354
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 351
    goto :goto_0

    :cond_3
    move v3, v2

    .line 353
    goto :goto_1
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->a:Lcom/yelp/android/serializable/EventRsvp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->a:Lcom/yelp/android/serializable/EventRsvp;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic k()J
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic l()J
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic m()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->m()I

    move-result v0

    return v0
.end method

.method public bridge synthetic n()D
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->n()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic o()D
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->o()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic p()D
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->p()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic q()D
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->q()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic r()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->r()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic s()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->s()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic t()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->t()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->u()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Event;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public bridge synthetic x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
