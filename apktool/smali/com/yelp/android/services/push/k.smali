.class Lcom/yelp/android/services/push/k;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Lcom/yelp/android/services/push/n;


# instance fields
.field final synthetic a:Lcom/yelp/android/services/push/q;

.field final synthetic b:Lcom/yelp/android/services/push/Notifier;


# direct methods
.method constructor <init>(Lcom/yelp/android/services/push/Notifier;Lcom/yelp/android/services/push/q;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/yelp/android/services/push/k;->b:Lcom/yelp/android/services/push/Notifier;

    iput-object p2, p0, Lcom/yelp/android/services/push/k;->a:Lcom/yelp/android/services/push/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/services/push/m;)V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/yelp/android/services/push/k;->b:Lcom/yelp/android/services/push/Notifier;

    iget-object v1, p0, Lcom/yelp/android/services/push/k;->a:Lcom/yelp/android/services/push/q;

    invoke-static {v0, v1, p1}, Lcom/yelp/android/services/push/Notifier;->a(Lcom/yelp/android/services/push/Notifier;Lcom/yelp/android/services/push/q;Lcom/yelp/android/services/push/m;)V

    .line 337
    return-void
.end method
