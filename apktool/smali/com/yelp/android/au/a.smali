.class public Lcom/yelp/android/au/a;
.super Lio/fabric/sdk/android/h;
.source "Crashlytics.java"

# interfaces
.implements Lio/fabric/sdk/android/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/au/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/h",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/fabric/sdk/android/i;"
    }
.end annotation


# instance fields
.field public final a:Lcom/crashlytics/android/answers/a;

.field public final b:Lcom/yelp/android/av/c;

.field public final c:Lcom/crashlytics/android/core/e;

.field public final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/crashlytics/android/answers/a;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/a;-><init>()V

    new-instance v1, Lcom/yelp/android/av/c;

    invoke-direct {v1}, Lcom/yelp/android/av/c;-><init>()V

    new-instance v2, Lcom/crashlytics/android/core/e;

    invoke-direct {v2}, Lcom/crashlytics/android/core/e;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/au/a;-><init>(Lcom/crashlytics/android/answers/a;Lcom/yelp/android/av/c;Lcom/crashlytics/android/core/e;)V

    .line 30
    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/answers/a;Lcom/yelp/android/av/c;Lcom/crashlytics/android/core/e;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lio/fabric/sdk/android/h;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yelp/android/au/a;->a:Lcom/crashlytics/android/answers/a;

    .line 34
    iput-object p2, p0, Lcom/yelp/android/au/a;->b:Lcom/yelp/android/av/c;

    .line 35
    iput-object p3, p0, Lcom/yelp/android/au/a;->c:Lcom/crashlytics/android/core/e;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lio/fabric/sdk/android/h;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/au/a;->d:Ljava/util/Collection;

    .line 38
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/yelp/android/au/a;->g()V

    .line 231
    invoke-static {}, Lcom/yelp/android/au/a;->e()Lcom/yelp/android/au/a;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/au/a;->c:Lcom/crashlytics/android/core/e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/crashlytics/android/core/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/yelp/android/au/a;->g()V

    .line 219
    invoke-static {}, Lcom/yelp/android/au/a;->e()Lcom/yelp/android/au/a;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/au/a;->c:Lcom/crashlytics/android/core/e;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/core/e;->a(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/yelp/android/au/a;->g()V

    .line 267
    invoke-static {}, Lcom/yelp/android/au/a;->e()Lcom/yelp/android/au/a;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/au/a;->c:Lcom/crashlytics/android/core/e;

    invoke-virtual {v0, p0, p1}, Lcom/crashlytics/android/core/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 275
    invoke-static {}, Lcom/yelp/android/au/a;->g()V

    .line 276
    invoke-static {}, Lcom/yelp/android/au/a;->e()Lcom/yelp/android/au/a;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/au/a;->c:Lcom/crashlytics/android/core/e;

    invoke-virtual {v0, p0, p1}, Lcom/crashlytics/android/core/e;->a(Ljava/lang/String;Z)V

    .line 277
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/yelp/android/au/a;->g()V

    .line 208
    invoke-static {}, Lcom/yelp/android/au/a;->e()Lcom/yelp/android/au/a;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/au/a;->c:Lcom/crashlytics/android/core/e;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/core/e;->a(Ljava/lang/Throwable;)V

    .line 209
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lcom/yelp/android/au/a;->g()V

    .line 240
    invoke-static {}, Lcom/yelp/android/au/a;->e()Lcom/yelp/android/au/a;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/au/a;->c:Lcom/crashlytics/android/core/e;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/core/e;->b(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public static e()Lcom/yelp/android/au/a;
    .locals 1

    .prologue
    .line 188
    const-class v0, Lcom/yelp/android/au/a;

    invoke-static {v0}, Lio/fabric/sdk/android/c;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/au/a;

    return-object v0
.end method

.method private static g()V
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lcom/yelp/android/au/a;->e()Lcom/yelp/android/au/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string/jumbo v0, "2.4.0.61"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string/jumbo v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yelp/android/au/a;->d:Ljava/util/Collection;

    return-object v0
.end method

.method protected d()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic f()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/yelp/android/au/a;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
