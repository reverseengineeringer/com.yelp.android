.class public Lcom/yelp/android/appdata/ba;
.super Ljava/lang/Object;
.source "StaticConfigValues.java"


# static fields
.field private static k:Lcom/yelp/android/appdata/ba;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v1, p0, Lcom/yelp/android/appdata/ba;->a:Z

    .line 20
    iput-boolean v1, p0, Lcom/yelp/android/appdata/ba;->b:Z

    .line 21
    iput-boolean v1, p0, Lcom/yelp/android/appdata/ba;->c:Z

    .line 22
    iput-boolean v1, p0, Lcom/yelp/android/appdata/ba;->d:Z

    .line 23
    const/16 v0, 0x12c

    iput v0, p0, Lcom/yelp/android/appdata/ba;->e:I

    .line 24
    const/16 v0, 0x32

    iput v0, p0, Lcom/yelp/android/appdata/ba;->f:I

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lcom/yelp/android/appdata/ba;->g:I

    .line 26
    iput-boolean v1, p0, Lcom/yelp/android/appdata/ba;->h:Z

    .line 27
    iput-boolean v1, p0, Lcom/yelp/android/appdata/ba;->i:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/ba;->j:Z

    .line 29
    return-void
.end method

.method public static a()Lcom/yelp/android/appdata/ba;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/yelp/android/appdata/ba;->k:Lcom/yelp/android/appdata/ba;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/yelp/android/appdata/ba;

    invoke-direct {v0}, Lcom/yelp/android/appdata/ba;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/ba;->k:Lcom/yelp/android/appdata/ba;

    .line 35
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/ba;->k:Lcom/yelp/android/appdata/ba;

    return-object v0
.end method
