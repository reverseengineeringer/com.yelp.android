.class public Lcom/yelp/android/af/h;
.super Ljava/lang/Object;
.source "NoAnimation.java"

# interfaces
.implements Lcom/yelp/android/af/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/af/e",
        "<TR;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/af/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/af/h",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/yelp/android/af/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/af/g",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/yelp/android/af/h;

    invoke-direct {v0}, Lcom/yelp/android/af/h;-><init>()V

    sput-object v0, Lcom/yelp/android/af/h;->a:Lcom/yelp/android/af/h;

    .line 11
    new-instance v0, Lcom/yelp/android/af/i;

    invoke-direct {v0}, Lcom/yelp/android/af/i;-><init>()V

    sput-object v0, Lcom/yelp/android/af/h;->b:Lcom/yelp/android/af/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a()Lcom/yelp/android/af/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/yelp/android/af/g",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/yelp/android/af/h;->b:Lcom/yelp/android/af/g;

    return-object v0
.end method

.method public static b()Lcom/yelp/android/af/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/yelp/android/af/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/yelp/android/af/h;->a:Lcom/yelp/android/af/h;

    return-object v0
.end method

.method static synthetic c()Lcom/yelp/android/af/h;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/yelp/android/af/h;->a:Lcom/yelp/android/af/h;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/yelp/android/af/f;)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
