.class public final Lcom/yelp/android/appdata/webrequests/l$a;
.super Ljava/lang/Object;
.source "ApplicationConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


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

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/yelp/android/serializable/UpdatePrompt;ILjava/lang/String;)V
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
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/l$a;->a:Ljava/util/Map;

    .line 95
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/l$a;->b:Ljava/util/Map;

    .line 96
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/l$a;->c:Lcom/yelp/android/serializable/UpdatePrompt;

    .line 97
    const-string/jumbo v0, "show_privacy_policy_splash"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/l$a;->e:Z

    .line 99
    iput p4, p0, Lcom/yelp/android/appdata/webrequests/l$a;->f:I

    .line 100
    iput-object p5, p0, Lcom/yelp/android/appdata/webrequests/l$a;->d:Ljava/lang/String;

    .line 101
    return-void
.end method
