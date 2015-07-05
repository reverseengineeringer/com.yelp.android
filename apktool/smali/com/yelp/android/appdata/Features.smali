.class public enum Lcom/yelp/android/appdata/Features;
.super Ljava/lang/Enum;
.source "Features.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/Features;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/Features;

.field private static DATA:Lcom/yelp/android/appdata/experiment/f;

.field public static final enum bug_report:Lcom/yelp/android/appdata/Features;

.field public static final enum category_picker:Lcom/yelp/android/appdata/Features;

.field public static final enum dfp_advertising_hash:Lcom/yelp/android/appdata/Features;

.field public static final enum events:Lcom/yelp/android/appdata/Features;

.field public static final enum message_to_business:Lcom/yelp/android/appdata/Features;

.field public static final enum messaging:Lcom/yelp/android/appdata/Features;

.field public static final enum mobile_google_analytics:Lcom/yelp/android/appdata/Features;

.field public static final enum nearby_search_suggest:Lcom/yelp/android/appdata/Features;

.field public static final enum search_feedback_enabled:Lcom/yelp/android/appdata/Features;

.field public static final enum update_prompt:Lcom/yelp/android/appdata/Features;

.field public static final enum updated_privacy_policy:Lcom/yelp/android/appdata/Features;

.field public static final enum video_capture:Lcom/yelp/android/appdata/Features;

.field public static final enum video_upload_from_gallery:Lcom/yelp/android/appdata/Features;


# instance fields
.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    new-instance v0, Lcom/yelp/android/appdata/Features;

    const-string/jumbo v1, "search_feedback_enabled"

    const-string/jumbo v2, "search_feedback_enabled"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/appdata/Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/Features;->search_feedback_enabled:Lcom/yelp/android/appdata/Features;

    .line 19
    new-instance v0, Lcom/yelp/android/appdata/Features;

    const-string/jumbo v1, "update_prompt"

    const-string/jumbo v2, "mobile.android_update_prompt"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/appdata/Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/Features;->update_prompt:Lcom/yelp/android/appdata/Features;

    .line 20
    new-instance v0, Lcom/yelp/android/appdata/Features;

    const-string/jumbo v1, "mobile_google_analytics"

    const-string/jumbo v2, "mobile.google_analytics"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/appdata/Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/Features;->mobile_google_analytics:Lcom/yelp/android/appdata/Features;

    .line 21
    new-instance v0, Lcom/yelp/android/appdata/Features;

    const-string/jumbo v1, "messaging"

    const-string/jumbo v2, "mobile.messaging"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/appdata/Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/Features;->messaging:Lcom/yelp/android/appdata/Features;

    .line 22
    new-instance v0, Lcom/yelp/android/appdata/Features;

    const-string/jumbo v1, "updated_privacy_policy"

    const-string/jumbo v2, "updated_privacy_policy"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/appdata/Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/Features;->updated_privacy_policy:Lcom/yelp/android/appdata/Features;

    .line 23
    new-instance v0, Lcom/yelp/android/appdata/Features;

    const-string/jumbo v1, "message_to_business"

    const/4 v2, 0x5

    const-string/jumbo v3, "mobile.message_the_business"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/Features;->message_to_business:Lcom/yelp/android/appdata/Features;

    .line 24
    new-instance v0, Lcom/yelp/android/appdata/Features$1;

    const-string/jumbo v1, "video_capture"

    const/4 v2, 0x6

    const-string/jumbo v3, "mobile.user_video_capture_android"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/Features$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    .line 36
    new-instance v0, Lcom/yelp/android/appdata/Features$2;

    const-string/jumbo v1, "video_upload_from_gallery"

    const/4 v2, 0x7

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/Features$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/Features;->video_upload_from_gallery:Lcom/yelp/android/appdata/Features;

    .line 43
    new-instance v0, Lcom/yelp/android/appdata/Features;

    const-string/jumbo v1, "bug_report"

    const/16 v2, 0x8

    const-string/jumbo v3, "mobile.bug_report"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/Features;->bug_report:Lcom/yelp/android/appdata/Features;

    .line 44
    new-instance v0, Lcom/yelp/android/appdata/Features;

    const-string/jumbo v1, "events"

    const/16 v2, 0x9

    const-string/jumbo v3, "mobile.events"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/Features;->events:Lcom/yelp/android/appdata/Features;

    .line 45
    new-instance v0, Lcom/yelp/android/appdata/Features$3;

    const-string/jumbo v1, "category_picker"

    const/16 v2, 0xa

    const-string/jumbo v3, "category.picker"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/Features$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/Features;->category_picker:Lcom/yelp/android/appdata/Features;

    .line 51
    new-instance v0, Lcom/yelp/android/appdata/Features;

    const-string/jumbo v1, "nearby_search_suggest"

    const/16 v2, 0xb

    const-string/jumbo v3, "mobile.nearby_search_suggest"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/Features;->nearby_search_suggest:Lcom/yelp/android/appdata/Features;

    .line 52
    new-instance v0, Lcom/yelp/android/appdata/Features;

    const-string/jumbo v1, "dfp_advertising_hash"

    const/16 v2, 0xc

    const-string/jumbo v3, "mobile.dfp_advertising_hash"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/Features;->dfp_advertising_hash:Lcom/yelp/android/appdata/Features;

    .line 12
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/yelp/android/appdata/Features;

    sget-object v1, Lcom/yelp/android/appdata/Features;->search_feedback_enabled:Lcom/yelp/android/appdata/Features;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/Features;->update_prompt:Lcom/yelp/android/appdata/Features;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/appdata/Features;->mobile_google_analytics:Lcom/yelp/android/appdata/Features;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/appdata/Features;->messaging:Lcom/yelp/android/appdata/Features;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/appdata/Features;->updated_privacy_policy:Lcom/yelp/android/appdata/Features;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/appdata/Features;->message_to_business:Lcom/yelp/android/appdata/Features;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/appdata/Features;->video_upload_from_gallery:Lcom/yelp/android/appdata/Features;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/appdata/Features;->bug_report:Lcom/yelp/android/appdata/Features;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/appdata/Features;->events:Lcom/yelp/android/appdata/Features;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/appdata/Features;->category_picker:Lcom/yelp/android/appdata/Features;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/appdata/Features;->nearby_search_suggest:Lcom/yelp/android/appdata/Features;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/appdata/Features;->dfp_advertising_hash:Lcom/yelp/android/appdata/Features;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/appdata/Features;->$VALUES:[Lcom/yelp/android/appdata/Features;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/yelp/android/appdata/Features;->mKey:Ljava/lang/String;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/appdata/Features$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/appdata/Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static data()Lcom/yelp/android/appdata/experiment/f;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/yelp/android/appdata/Features;->DATA:Lcom/yelp/android/appdata/experiment/f;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Features.DATA should have been initialized by AppData!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/Features;->DATA:Lcom/yelp/android/appdata/experiment/f;

    return-object v0
.end method

.method public static setData(Lcom/yelp/android/appdata/experiment/f;)V
    .locals 0

    .prologue
    .line 74
    sput-object p0, Lcom/yelp/android/appdata/Features;->DATA:Lcom/yelp/android/appdata/experiment/f;

    .line 75
    return-void
.end method

.method public static updateFeatures(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lcom/yelp/android/appdata/Features;->data()Lcom/yelp/android/appdata/experiment/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/appdata/experiment/f;->a(Ljava/util/Map;)V

    .line 83
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/Features;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/yelp/android/appdata/Features;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/Features;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/Features;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/yelp/android/appdata/Features;->$VALUES:[Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/Features;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/Features;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/appdata/Features;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/Features;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected isEnabled(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/yelp/android/appdata/Features;->data()Lcom/yelp/android/appdata/experiment/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/Features;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/experiment/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEnabledAsync(Landroid/content/Context;Lcom/yelp/android/appdata/r;)V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/yelp/android/appdata/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/yelp/android/appdata/q;-><init>(Lcom/yelp/android/appdata/Features;Landroid/content/Context;Lcom/yelp/android/appdata/r;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    return-void
.end method
