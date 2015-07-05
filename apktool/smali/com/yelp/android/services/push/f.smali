.class Lcom/yelp/android/services/push/f;
.super Ljava/lang/Object;
.source "GcmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/services/push/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/services/push/d;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/yelp/android/services/push/f;->a:Lcom/yelp/android/services/push/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yelp/android/services/push/f;->a:Lcom/yelp/android/services/push/d;

    invoke-static {v0}, Lcom/yelp/android/services/push/d;->e(Lcom/yelp/android/services/push/d;)I

    .line 147
    iget-object v0, p0, Lcom/yelp/android/services/push/f;->a:Lcom/yelp/android/services/push/d;

    invoke-virtual {v0}, Lcom/yelp/android/services/push/d;->d()V

    .line 148
    return-void
.end method
