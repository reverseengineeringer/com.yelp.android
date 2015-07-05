.class public abstract Lcom/yelp/android/util/ContactsFetcher;
.super Ljava/lang/Object;
.source "ContactsFetcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method public static b()Lcom/yelp/android/util/ContactsFetcher;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/yelp/android/util/e;->a()Lcom/yelp/android/util/ContactsFetcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a()Landroid/content/Intent;
.end method

.method public abstract a(Landroid/content/Context;Landroid/content/Intent;)Lcom/yelp/android/util/ContactsFetcher$Contact;
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract a(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/util/ContactsFetcher$Contact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/util/ContactsFetcher$Contact;",
            ">;"
        }
    .end annotation
.end method
