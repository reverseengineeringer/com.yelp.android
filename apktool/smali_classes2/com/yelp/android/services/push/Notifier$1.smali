.class Lcom/yelp/android/services/push/Notifier$1;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Lcom/yelp/android/services/push/Notifier$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/services/push/Notifier;->a(Lcom/yelp/android/services/push/g;Lcom/yelp/android/services/push/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/services/push/h;

.field final synthetic b:Lcom/yelp/android/services/push/Notifier;


# direct methods
.method constructor <init>(Lcom/yelp/android/services/push/Notifier;Lcom/yelp/android/services/push/h;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/yelp/android/services/push/Notifier$1;->b:Lcom/yelp/android/services/push/Notifier;

    iput-object p2, p0, Lcom/yelp/android/services/push/Notifier$1;->a:Lcom/yelp/android/services/push/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/services/push/Notifier$a;)V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/yelp/android/services/push/Notifier$1;->b:Lcom/yelp/android/services/push/Notifier;

    iget-object v1, p0, Lcom/yelp/android/services/push/Notifier$1;->a:Lcom/yelp/android/services/push/h;

    invoke-static {v0, v1, p1}, Lcom/yelp/android/services/push/Notifier;->a(Lcom/yelp/android/services/push/Notifier;Lcom/yelp/android/services/push/h;Lcom/yelp/android/services/push/Notifier$a;)V

    .line 372
    return-void
.end method
