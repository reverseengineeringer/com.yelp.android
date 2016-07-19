.class public final Lcom/yelp/android/an/a;
.super Ljava/lang/Object;
.source "EmptySignature.java"

# interfaces
.implements Lcom/bumptech/glide/load/b;


# static fields
.field private static final a:Lcom/yelp/android/an/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/an/a;

    invoke-direct {v0}, Lcom/yelp/android/an/a;-><init>()V

    sput-object v0, Lcom/yelp/android/an/a;->a:Lcom/yelp/android/an/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a()Lcom/yelp/android/an/a;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/yelp/android/an/a;->a:Lcom/yelp/android/an/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 25
    return-void
.end method
