.class public final Lcom/yelp/android/appdata/webrequests/o;
.super Ljava/lang/Object;
.source "ApplicationConfigRequest.java"


# instance fields
.field public final a:Ljava/util/Map;
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

.field public final b:Ljava/util/Map;
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

.field public final c:Lcom/yelp/android/serializable/UpdatePrompt;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/yelp/android/serializable/UpdatePrompt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yelp/android/serializable/UpdatePrompt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/o;->a:Ljava/util/Map;

    .line 68
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/o;->b:Ljava/util/Map;

    .line 69
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/o;->c:Lcom/yelp/android/serializable/UpdatePrompt;

    .line 70
    const-string/jumbo v0, "show_privacy_policy_splash"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/o;->d:Z

    .line 71
    return-void
.end method
