.class Lcom/yelp/android/services/g;
.super Ljava/lang/Thread;
.source "PersistingCookieStore.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/services/PersistingCookieStore;


# direct methods
.method constructor <init>(Lcom/yelp/android/services/PersistingCookieStore;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yelp/android/services/g;->a:Lcom/yelp/android/services/PersistingCookieStore;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/services/g;->a:Lcom/yelp/android/services/PersistingCookieStore;

    invoke-virtual {v0}, Lcom/yelp/android/services/PersistingCookieStore;->a()V

    .line 58
    return-void
.end method
