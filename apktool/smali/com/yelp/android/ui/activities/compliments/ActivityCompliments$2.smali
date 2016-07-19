.class Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$2;
.super Ljava/lang/Object;
.source "ActivityCompliments.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/compliments/Mode;

.field final synthetic b:Lcom/yelp/android/serializable/Compliment;

.field final synthetic c:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/Compliment;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$2;->c:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$2;->a:Lcom/yelp/android/ui/activities/compliments/Mode;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$2;->b:Lcom/yelp/android/serializable/Compliment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$2;->c:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$2;->a:Lcom/yelp/android/ui/activities/compliments/Mode;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$2;->b:Lcom/yelp/android/serializable/Compliment;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->a(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/Compliment;)V

    .line 241
    return-void
.end method
