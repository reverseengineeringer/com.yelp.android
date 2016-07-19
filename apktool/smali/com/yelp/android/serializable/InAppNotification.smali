.class public Lcom/yelp/android/serializable/InAppNotification;
.super Lcom/yelp/android/serializable/_InAppNotification;
.source "InAppNotification.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/InAppNotification;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/InAppNotification;->a:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/yelp/android/serializable/InAppNotification;->a:Ljava/util/Map;

    const-string/jumbo v1, "nearby"

    const-class v2, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/yelp/android/serializable/InAppNotification;->a:Ljava/util/Map;

    const-string/jumbo v1, "business"

    const-class v2, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/yelp/android/serializable/InAppNotification$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/InAppNotification$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/InAppNotification;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/serializable/_InAppNotification;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/yelp/android/serializable/_InAppNotification;-><init>()V

    .line 68
    const-string/jumbo v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/InAppNotification;->i:J

    .line 69
    const-string/jumbo v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/InAppNotification;->b:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "message"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/InAppNotification;->c:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "campaign_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/InAppNotification;->d:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "tap_action"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/InAppNotification;->e:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "location"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/InAppNotification;->f:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "cohort"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/InAppNotification;->g:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "version"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/InAppNotification;->h:D

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yelp/android/serializable/_InAppNotification;-><init>()V

    .line 83
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/InAppNotification;->b:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "msg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/InAppNotification;->c:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "campaign_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/InAppNotification;->d:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "tap_action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/InAppNotification;->e:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "loc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/InAppNotification;->f:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "cohort"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/InAppNotification;->g:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/InAppNotification;->h:D

    .line 90
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 116
    const-string/jumbo v1, "cohort"

    iget-object v2, p0, Lcom/yelp/android/serializable/InAppNotification;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string/jumbo v1, "campaign_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/InAppNotification;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_InAppNotification;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a(Lcom/yelp/android/database/l;)V
    .locals 4

    .prologue
    .line 93
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 94
    const-string/jumbo v0, "title"

    iget-object v2, p0, Lcom/yelp/android/serializable/InAppNotification;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "message"

    iget-object v2, p0, Lcom/yelp/android/serializable/InAppNotification;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "campaign_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/InAppNotification;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "tap_action"

    iget-object v2, p0, Lcom/yelp/android/serializable/InAppNotification;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v2, "location"

    sget-object v0, Lcom/yelp/android/serializable/InAppNotification;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/yelp/android/serializable/InAppNotification;->f:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "cohort"

    iget-object v2, p0, Lcom/yelp/android/serializable/InAppNotification;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "version"

    iget-wide v2, p0, Lcom/yelp/android/serializable/InAppNotification;->h:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 102
    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/yelp/android/serializable/InAppNotification;->i:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/yelp/android/database/l;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/InAppNotification;->i:J

    .line 108
    return-void
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_InAppNotification;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()D
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_InAppNotification;->b()D

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lcom/yelp/android/database/l;)V
    .locals 4

    .prologue
    .line 111
    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/yelp/android/serializable/InAppNotification;->i:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/yelp/android/database/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_InAppNotification;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_InAppNotification;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_InAppNotification;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_InAppNotification;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_InAppNotification;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_InAppNotification;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_InAppNotification;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_InAppNotification;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
