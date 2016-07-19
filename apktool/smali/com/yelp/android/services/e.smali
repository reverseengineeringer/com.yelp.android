.class public Lcom/yelp/android/services/e;
.super Ljava/lang/Object;
.source "SharingUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/services/e$b;,
        Lcom/yelp/android/services/e$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.android.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.whatsapp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.facebook.katana"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.google.android.apps.docs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "com.yelp.android"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/services/e;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?ref=yelp-android\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/yelp/android/services/e;->a:[Ljava/lang/String;

    return-object v0
.end method
