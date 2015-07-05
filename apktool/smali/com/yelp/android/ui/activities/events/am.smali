.class Lcom/yelp/android/ui/activities/events/am;
.super Ljava/lang/Object;
.source "EventSubscriptionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Lcom/yelp/android/ui/activities/events/al;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/al;Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/am;->b:Lcom/yelp/android/ui/activities/events/al;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/events/am;->a:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/am;->a:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/am;->b:Lcom/yelp/android/ui/activities/events/al;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/al;->a(Lcom/yelp/android/ui/activities/events/al;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 186
    return-void
.end method
