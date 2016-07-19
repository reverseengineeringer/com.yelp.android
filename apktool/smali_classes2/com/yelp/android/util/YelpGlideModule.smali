.class public Lcom/yelp/android/util/YelpGlideModule;
.super Ljava/lang/Object;
.source "YelpGlideModule.java"

# interfaces
.implements Lcom/yelp/android/aj/a;


# static fields
.field private static a:Lcom/yelp/android/aa/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/aa/m",
            "<",
            "Lcom/yelp/android/aa/d;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/g;)V
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/yelp/android/util/YelpGlideModule;->a:Lcom/yelp/android/aa/m;

    if-eqz v0, :cond_0

    .line 36
    const-class v0, Lcom/yelp/android/aa/d;

    const-class v1, Ljava/io/InputStream;

    sget-object v2, Lcom/yelp/android/util/YelpGlideModule;->a:Lcom/yelp/android/aa/m;

    invoke-virtual {p2, v0, v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)V

    .line 38
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/bumptech/glide/h;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
