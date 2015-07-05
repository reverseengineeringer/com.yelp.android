.class public Lcom/yelp/android/ui/util/cd;
.super Ljava/lang/Object;
.source "SuggestionFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/yelp/android/ui/util/cd;->a:Ljava/util/List;

    .line 60
    iput-object p2, p0, Lcom/yelp/android/ui/util/cd;->b:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/yelp/android/ui/util/cd;->c:Ljava/lang/String;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/ui/util/ca;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/cd;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/cd;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/util/cd;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/util/cd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/util/cd;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/util/cd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/util/cd;->c:Ljava/lang/String;

    return-object v0
.end method
