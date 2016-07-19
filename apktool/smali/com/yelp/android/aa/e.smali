.class public interface abstract Lcom/yelp/android/aa/e;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final a:Lcom/yelp/android/aa/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcom/yelp/android/aa/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/yelp/android/aa/e$1;

    invoke-direct {v0}, Lcom/yelp/android/aa/e$1;-><init>()V

    sput-object v0, Lcom/yelp/android/aa/e;->a:Lcom/yelp/android/aa/e;

    .line 29
    new-instance v0, Lcom/yelp/android/aa/j$a;

    invoke-direct {v0}, Lcom/yelp/android/aa/j$a;-><init>()V

    invoke-virtual {v0}, Lcom/yelp/android/aa/j$a;->a()Lcom/yelp/android/aa/j;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/aa/e;->b:Lcom/yelp/android/aa/e;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
