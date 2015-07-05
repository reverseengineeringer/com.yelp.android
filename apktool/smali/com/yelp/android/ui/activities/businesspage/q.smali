.class final Lcom/yelp/android/ui/activities/businesspage/q;
.super Ljava/lang/Object;
.source "BusinessListButtonAdapter.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 49
    const-class v0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;

    const v2, 0x7f010166

    invoke-direct {v0, p2, v1, v2}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const v1, 0x7f0c001d

    invoke-interface {p3, v1}, Landroid/util/AttributeSet;->getIdAttributeResourceValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 54
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
