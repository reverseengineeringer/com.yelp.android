.class public Lcom/yelp/android/ai/e;
.super Ljava/lang/Object;
.source "UnitTranscoder.java"

# interfaces
.implements Lcom/yelp/android/ai/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ai/c",
        "<TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/ai/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ai/e",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/yelp/android/ai/e;

    invoke-direct {v0}, Lcom/yelp/android/ai/e;-><init>()V

    sput-object v0, Lcom/yelp/android/ai/e;->a:Lcom/yelp/android/ai/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/yelp/android/ai/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/yelp/android/ai/c",
            "<TZ;TZ;>;"
        }
    .end annotation

    .prologue
    .line 15
    sget-object v0, Lcom/yelp/android/ai/e;->a:Lcom/yelp/android/ai/e;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/i;)Lcom/bumptech/glide/load/engine/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/i",
            "<TZ;>;)",
            "Lcom/bumptech/glide/load/engine/i",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 20
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, ""

    return-object v0
.end method
