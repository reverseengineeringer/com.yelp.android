.class Lcom/yelp/android/ui/activities/support/a;
.super Ljava/lang/Object;
.source "JavaScriptEventInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/support/b;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/support/b;Ljava/lang/reflect/Method;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/a;->a:Lcom/yelp/android/ui/activities/support/b;

    .line 95
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/a;->b:Ljava/lang/reflect/Method;

    .line 96
    iput-object p3, p0, Lcom/yelp/android/ui/activities/support/a;->c:Lorg/json/JSONObject;

    .line 97
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/a;->a:Lcom/yelp/android/ui/activities/support/b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/support/a;->c:Lorg/json/JSONObject;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string/jumbo v1, "callback failed"

    invoke-static {p0, v1, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
