.class Lcom/yelp/android/ui/activities/compliments/k;
.super Ljava/lang/Object;
.source "ViewCompliments.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/compliments/Mode;

.field final synthetic b:Lcom/yelp/android/serializable/Compliment;

.field final synthetic c:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/Compliment;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/k;->c:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/compliments/k;->a:Lcom/yelp/android/ui/activities/compliments/Mode;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/compliments/k;->b:Lcom/yelp/android/serializable/Compliment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/k;->c:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/k;->a:Lcom/yelp/android/ui/activities/compliments/Mode;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/k;->b:Lcom/yelp/android/serializable/Compliment;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->a(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/Compliment;)V

    .line 226
    return-void
.end method
