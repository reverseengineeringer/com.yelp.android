.class Lcom/yelp/android/ui/activities/ActivityCreateAccount$a;
.super Landroid/widget/BaseAdapter;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityCreateAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

.field private final b:Landroid/content/Context;

.field private final c:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 812
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$a;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 813
    iput-object p2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$a;->b:Landroid/content/Context;

    .line 814
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$a;->c:[Ljava/lang/CharSequence;

    .line 815
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$a;->c:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$a;->c:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 829
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 834
    if-nez p2, :cond_0

    .line 835
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$a;->b:Landroid/content/Context;

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 838
    :cond_0
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 839
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    return-object p2
.end method
