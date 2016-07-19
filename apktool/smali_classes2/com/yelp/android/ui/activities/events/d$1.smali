.class Lcom/yelp/android/ui/activities/events/d$1;
.super Ljava/lang/Object;
.source "EventSubscriptionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/events/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Lcom/yelp/android/ui/activities/events/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/d;Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/d$1;->b:Lcom/yelp/android/ui/activities/events/d;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/events/d$1;->a:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d$1;->a:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/d$1;->b:Lcom/yelp/android/ui/activities/events/d;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/d;->a(Lcom/yelp/android/ui/activities/events/d;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 203
    return-void
.end method
