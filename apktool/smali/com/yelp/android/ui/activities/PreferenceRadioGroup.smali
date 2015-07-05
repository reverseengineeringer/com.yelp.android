.class public Lcom/yelp/android/ui/activities/PreferenceRadioGroup;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceRadioGroup.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/PreferenceRadioGroup;->a:Ljava/util/LinkedList;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/PreferenceRadioGroup;->a:Ljava/util/LinkedList;

    .line 21
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/PreferenceRadioGroup;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/PreferenceRadioGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/PreferenceRadioGroup;->persistString(Ljava/lang/String;)Z

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareAddPreference(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 30
    instance-of v0, p1, Lcom/yelp/android/ui/activities/PreferenceRadioGroup;

    if-eqz v0, :cond_1

    .line 31
    const/4 v0, 0x0

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onPrepareAddPreference(Landroid/preference/Preference;)Z

    move-result v0

    .line 34
    if-eqz v0, :cond_0

    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 36
    iget-object v1, p0, Lcom/yelp/android/ui/activities/PreferenceRadioGroup;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
