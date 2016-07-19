.class Lcom/yelp/android/h/j$c;
.super Lcom/yelp/android/h/j$d;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/h/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/yelp/android/h/j$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/h/j;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/yelp/android/h/j$c$1;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/h/j$c$1;-><init>(Lcom/yelp/android/h/j$c;Lcom/yelp/android/h/j;)V

    invoke-static {v0}, Lcom/yelp/android/h/l;->a(Lcom/yelp/android/h/l$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
