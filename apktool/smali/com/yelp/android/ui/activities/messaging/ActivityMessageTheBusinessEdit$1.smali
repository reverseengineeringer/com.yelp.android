.class Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit$1;
.super Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;
.source "ActivityMessageTheBusinessEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit$1;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 104
    check-cast p1, Lcom/yelp/android/cc/k;

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit$1;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;

    const v1, 0x7f0f037e

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yelp/android/cc/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method
