.class final Lcom/yelp/android/cz/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/cz/d;

.field final synthetic b:Lcom/yelp/android/cz/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/cz/b;Lcom/yelp/android/cz/d;)V
    .locals 0

    iput-object p1, p0, Lcom/yelp/android/cz/c;->b:Lcom/yelp/android/cz/b;

    iput-object p2, p0, Lcom/yelp/android/cz/c;->a:Lcom/yelp/android/cz/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/yelp/android/cz/c;->a:Lcom/yelp/android/cz/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/cz/b;->a(Lcom/yelp/android/cz/d;Landroid/app/Activity;)V

    return-void
.end method
