.class Lcom/yelp/android/ui/activities/bc;
.super Ljava/lang/Object;
.source "ActivityConfig.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityConfig;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bc;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 319
    if-eqz p2, :cond_0

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bc;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->a(Lcom/yelp/android/ui/activities/ActivityConfig;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bc;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->a(Lcom/yelp/android/ui/activities/ActivityConfig;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bc;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->a(Lcom/yelp/android/ui/activities/ActivityConfig;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
